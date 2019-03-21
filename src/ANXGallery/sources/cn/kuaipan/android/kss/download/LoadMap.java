package cn.kuaipan.android.kss.download;

import android.os.Bundle;
import android.util.Log;
import cn.kuaipan.android.http.IKscTransferListener;
import cn.kuaipan.android.kss.IKssDownloadRequestResult;
import cn.kuaipan.android.kss.IKssDownloadRequestResult.Block;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;

public class LoadMap {
    private final BlockSpace[] mBlocks;
    private final ArrayList<Space> mEmptySpaces = new ArrayList();
    private IKscTransferListener mListener;
    private final HashMap<Space, LoadRecorder> mRecorders = new HashMap();

    class BlockSpace {
        private final long end;
        private final String sha1;
        private final ArrayList<Space> spaces = new ArrayList();
        private final long start;
        private int verifyFailCount = 0;
        private VerifyState verifyState;

        public BlockSpace(Block block, long start) {
            this.sha1 = block.sha1;
            this.start = start;
            this.end = block.size + start;
            reset();
        }

        public boolean isVerified() {
            return this.verifyState == VerifyState.VERIFIED;
        }

        public synchronized void setSpaces(long[] spaceCfg) {
            this.spaces.clear();
            this.verifyState = VerifyState.NOT_VERIFY;
            if (spaceCfg == null || spaceCfg.length % 2 != 0) {
                this.spaces.add(new Space(this, this.start, this.end));
            }
            int count = spaceCfg.length / 2;
            for (int i = 0; i < count; i++) {
                this.spaces.add(new Space(this, spaceCfg[i * 2], spaceCfg[(i * 2) + 1]));
            }
        }

        private synchronized void reset() {
            this.verifyState = VerifyState.NOT_VERIFY;
            this.spaces.clear();
            this.spaces.add(new Space(this, this.start, this.end));
        }

        private synchronized boolean tryMerge(Space space) {
            boolean z = true;
            synchronized (this) {
                if (space.size() <= 0) {
                    this.spaces.remove(space);
                } else {
                    Iterator it = this.spaces.iterator();
                    while (it.hasNext()) {
                        Space child = (Space) it.next();
                        if (child != space && child.tryMerge(space)) {
                            break;
                        }
                    }
                    z = false;
                }
            }
            return z;
        }

        private synchronized Space[] getAllSpaces() {
            return (Space[]) this.spaces.toArray(new Space[this.spaces.size()]);
        }

        private synchronized long size() {
            long result;
            result = 0;
            Iterator it = this.spaces.iterator();
            while (it.hasNext()) {
                result += ((Space) it.next()).size();
            }
            return result;
        }

        private synchronized boolean verify(KssAccessor accessor, boolean increaseFailCount) throws IOException {
            boolean verifyPassed;
            if (this.verifyState != VerifyState.NOT_VERIFY || size() > 0 || this.verifyFailCount >= 2) {
                verifyPassed = true;
            } else {
                this.verifyState = VerifyState.VERIFING;
                try {
                    verifyPassed = _verify(accessor);
                    if (!verifyPassed) {
                        if (increaseFailCount) {
                            this.verifyFailCount++;
                        }
                        if (this.verifyFailCount >= 2) {
                            throw new IOException("Sha1 verify failed more than MAX_VERIFY_COUNT");
                        }
                    }
                    if (verifyPassed) {
                        this.verifyState = VerifyState.VERIFIED;
                    } else {
                        this.verifyState = VerifyState.NOT_VERIFY;
                    }
                } catch (Throwable th) {
                    if (false) {
                        this.verifyState = VerifyState.VERIFIED;
                    } else {
                        this.verifyState = VerifyState.NOT_VERIFY;
                    }
                }
            }
            return verifyPassed;
        }

        private boolean _verify(KssAccessor accessor) {
            boolean result = false;
            accessor.lock();
            try {
                String sha1 = accessor.sha1(this.start, this.end - this.start);
                result = sha1 == null ? false : sha1.equalsIgnoreCase(this.sha1);
                accessor.unlock();
            } catch (Exception e) {
                Log.w("LoadMap", "Meet exception when verify sha1.", e);
                accessor.unlock();
            } catch (Throwable th) {
                accessor.unlock();
                throw th;
            }
            return result;
        }

        public String toString() {
            StringBuilder builder = new StringBuilder();
            builder.append("Block(");
            builder.append(this.start);
            builder.append("-");
            builder.append(this.end);
            builder.append("):");
            if (this.spaces.isEmpty()) {
                builder.append(this.verifyState);
            } else {
                builder.append(Arrays.toString(this.spaces.toArray()));
            }
            return builder.toString();
        }
    }

    class Space {
        private final BlockSpace block;
        private long end;
        private long start;

        public Space(BlockSpace block, long start, long end) {
            if (end < start) {
                throw new IndexOutOfBoundsException();
            }
            this.block = block;
            this.start = start;
            this.end = end;
        }

        long getStart() {
            return this.start;
        }

        void remove(int size) {
            synchronized (this.block) {
                this.start = Math.min(this.start + ((long) size), this.end);
            }
        }

        private Space halve() {
            long newStart = this.start + ((this.end - this.start) / 2);
            if (newStart % 1024 > 0) {
                newStart = ((newStart / 1024) + 1) * 1024;
            }
            Space result = new Space(this.block, newStart, this.end);
            this.block.spaces.add(this);
            this.end = newStart;
            return result;
        }

        long size() {
            long j;
            synchronized (this.block) {
                j = this.end - this.start;
            }
            return j;
        }

        private boolean tryMerge() {
            return this.block.tryMerge(this);
        }

        private boolean tryMerge(Space space) {
            if (space.start != this.end) {
                return false;
            }
            this.end = space.end;
            return true;
        }

        public String toString() {
            return this.start + "-" + this.end;
        }
    }

    enum VerifyState {
        NOT_VERIFY,
        VERIFING,
        VERIFIED
    }

    public LoadMap(IKssDownloadRequestResult request, IKscTransferListener listener) {
        int count = request.getBlockCount();
        this.mBlocks = new BlockSpace[count];
        long pos = 0;
        for (int i = 0; i < count; i++) {
            Block block = request.getBlock(i);
            BlockSpace blockSpace = new BlockSpace(block, pos);
            this.mBlocks[i] = blockSpace;
            this.mEmptySpaces.addAll(Arrays.asList(blockSpace.getAllSpaces()));
            pos += block.size;
        }
        this.mListener = listener;
        if (listener != null) {
            listener.setReceiveTotal(request.getTotalSize());
        }
    }

    void verify(KssAccessor accessor, boolean increaseFailCount) throws IOException {
        for (int i = 0; i < this.mBlocks.length; i++) {
            BlockSpace block = this.mBlocks[i];
            if (!block.verify(accessor, increaseFailCount)) {
                resetBlock(i);
                if (this.mListener != null) {
                    this.mListener.received(block.start - block.end);
                }
            }
        }
    }

    synchronized LoadRecorder obtainRecorder() {
        LoadRecorder recorder;
        Space space = allocEmptySpace();
        if (space != null) {
            recorder = new LoadRecorder(this, space);
            this.mRecorders.put(space, recorder);
        } else {
            space = findMaxInUsedSpace();
            if (space == null || space.size() <= 65536) {
                recorder = null;
            } else {
                space = space.halve();
                recorder = new LoadRecorder(this, space);
                this.mRecorders.put(space, recorder);
            }
        }
        return recorder;
    }

    synchronized void recycleRecorder(LoadRecorder recorder) {
        Space space = recorder.getSpace();
        if (this.mRecorders.remove(space) != null) {
            if (!space.tryMerge()) {
                this.mEmptySpaces.add(space);
            }
        }
    }

    void resetBlock(int index) {
        if (index < 0 || index >= this.mBlocks.length) {
            throw new IndexOutOfBoundsException();
        }
        BlockSpace block = this.mBlocks[index];
        synchronized (block) {
            for (Space space : block.getAllSpaces()) {
                LoadRecorder recorder = (LoadRecorder) this.mRecorders.remove(space);
                if (recorder != null) {
                    recorder.recycle();
                }
                this.mEmptySpaces.remove(space);
            }
            block.reset();
            this.mEmptySpaces.addAll(Arrays.asList(block.getAllSpaces()));
        }
    }

    private Space allocEmptySpace() {
        long maxSize = -1;
        int maxIndex = -1;
        for (int i = 0; i < this.mEmptySpaces.size(); i++) {
            long size = ((Space) this.mEmptySpaces.get(i)).size();
            if (maxSize < size) {
                maxSize = size;
                maxIndex = i;
            }
        }
        if (maxIndex >= 0) {
            return (Space) this.mEmptySpaces.remove(maxIndex);
        }
        return null;
    }

    public void onSpaceRemoved(int size) {
        if (this.mListener != null) {
            this.mListener.received((long) size);
        }
    }

    private Space findMaxInUsedSpace() {
        long maxSize = -1;
        Space result = null;
        for (Space space : this.mRecorders.keySet()) {
            long size = space.size();
            if (maxSize < size) {
                maxSize = size;
                result = space;
            }
        }
        return result;
    }

    public void initSize(long length) {
        synchronized (this) {
            long pos = 0;
            this.mEmptySpaces.clear();
            if (this.mListener != null) {
                this.mListener.setReceivePos(0);
            }
            for (BlockSpace block : this.mBlocks) {
                block.reset();
                long size = block.size();
                if (length >= pos + size) {
                    block.setSpaces(new long[0]);
                    if (this.mListener != null) {
                        this.mListener.received(block.end - block.start);
                    }
                } else {
                    long end = pos + size;
                    block.setSpaces(new long[]{pos, end});
                }
                this.mEmptySpaces.addAll(Arrays.asList(block.getAllSpaces()));
                pos += size;
            }
        }
    }

    public boolean load(Bundle b) {
        if (b == null) {
            return false;
        }
        try {
            ArrayList<Bundle> blockData = b.getParcelableArrayList("blocks");
            int blockConut = blockData.size();
            if (blockConut != this.mBlocks.length) {
                Log.w("LoadMap", "Block count is wrong in kinfo, ignore saved map");
                return false;
            }
            Bundle bundle;
            BlockSpace block;
            int i = 0;
            while (i < blockConut) {
                bundle = (Bundle) blockData.get(i);
                long start = bundle.getLong("block_start");
                long end = bundle.getLong("block_end");
                block = this.mBlocks[i];
                if (block.start == start && block.end == end) {
                    i++;
                } else {
                    Log.w("LoadMap", "Block start/ends is wrong in kinfo, ignore saved map");
                    return false;
                }
            }
            synchronized (this) {
                this.mEmptySpaces.clear();
                if (this.mListener != null) {
                    this.mListener.setReceivePos(0);
                }
                long initSize = 0;
                for (i = 0; i < blockConut; i++) {
                    bundle = (Bundle) blockData.get(i);
                    block = this.mBlocks[i];
                    block.reset();
                    block.setSpaces(bundle.getLongArray("space_info"));
                    this.mEmptySpaces.addAll(Arrays.asList(block.getAllSpaces()));
                    if (this.mListener != null) {
                        initSize += (block.end - block.start) - block.size();
                    }
                }
                if (!(this.mListener == null || initSize == 0)) {
                    this.mListener.received(initSize);
                }
            }
            return true;
        } catch (Throwable th) {
            Log.w("LoadMap", "Meet exception Block count is wrony in kinfo, ignore saved map");
            return false;
        }
    }

    public void save(Bundle b) {
        if (b != null) {
            ArrayList<Bundle> blockData = new ArrayList(blockConut);
            for (BlockSpace block : this.mBlocks) {
                Bundle bundle = new Bundle();
                bundle.putLong("block_start", block.start);
                bundle.putLong("block_end", block.end);
                ArrayList<Space> spaces = block.spaces;
                int conut = spaces.size();
                long[] pos = new long[(conut * 2)];
                for (int j = 0; j < conut; j++) {
                    Space space = (Space) spaces.get(j);
                    pos[j * 2] = space.start;
                    pos[(j * 2) + 1] = space.end;
                }
                bundle.putLongArray("space_info", pos);
                blockData.add(bundle);
            }
            b.putParcelableArrayList("blocks", blockData);
        }
    }

    public boolean isCompleted() {
        for (BlockSpace block : this.mBlocks) {
            if (block.size() > 0 || !block.isVerified()) {
                return false;
            }
        }
        return true;
    }

    public String toString() {
        return Arrays.toString(this.mBlocks);
    }

    public long getBlockStart(long start) {
        if (start < 0) {
            Log.d("LoadMap", "start: " + start);
            throw new IndexOutOfBoundsException();
        }
        long result = -1;
        for (BlockSpace block : this.mBlocks) {
            if (start >= block.start && start < block.end) {
                result = block.start;
                break;
            }
        }
        if (result >= 0) {
            return result;
        }
        throw new IndexOutOfBoundsException();
    }
}
