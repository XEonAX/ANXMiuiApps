package com.miui.gallery.util.uil;

import android.util.Log;
import java.io.Closeable;
import java.io.File;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.nio.ByteOrder;
import java.nio.MappedByteBuffer;
import java.nio.channels.FileChannel;
import java.nio.channels.FileChannel.MapMode;
import java.util.zip.Adler32;

public class BlobCache implements Closeable {
    private int mActiveBytes;
    private RandomAccessFile mActiveDataFile;
    private int mActiveEntries;
    private int mActiveHashStart;
    private int mActiveRegion;
    private Adler32 mAdler32 = new Adler32();
    private byte[] mBlobHeader = new byte[20];
    private RandomAccessFile mDataFile0;
    private RandomAccessFile mDataFile1;
    private int mFileOffset;
    private RandomAccessFile mInactiveDataFile;
    private int mInactiveHashStart;
    private MappedByteBuffer mIndexBuffer;
    private FileChannel mIndexChannel;
    private RandomAccessFile mIndexFile;
    private byte[] mIndexHeader = new byte[32];
    private LookupRequest mLookupRequest = new LookupRequest();
    private int mMaxBytes;
    private int mMaxEntries;
    private int mSlotOffset;
    private int mVersion;

    public static class LookupRequest {
        public byte[] buffer;
        public long key;
        public int length;
    }

    public BlobCache(String path, int maxEntries, int maxBytes, boolean reset, int version) throws IOException {
        this.mIndexFile = new RandomAccessFile(path + ".idx", "rw");
        this.mDataFile0 = new RandomAccessFile(path + ".0", "rw");
        this.mDataFile1 = new RandomAccessFile(path + ".1", "rw");
        this.mVersion = version;
        if (reset || !loadIndex()) {
            resetCache(maxEntries, maxBytes);
            if (!loadIndex()) {
                closeAll();
                throw new IOException("unable to load index");
            }
        }
    }

    public static void deleteFiles(String path) {
        deleteFileSilently(path + ".idx");
        deleteFileSilently(path + ".0");
        deleteFileSilently(path + ".1");
    }

    private static void deleteFileSilently(String path) {
        try {
            new File(path).delete();
        } catch (Throwable th) {
        }
    }

    public void close() {
        syncAll();
        closeAll();
    }

    private void closeAll() {
        closeSilently(this.mIndexChannel);
        closeSilently(this.mIndexFile);
        closeSilently(this.mDataFile0);
        closeSilently(this.mDataFile1);
    }

    private boolean loadIndex() {
        try {
            this.mIndexFile.seek(0);
            this.mDataFile0.seek(0);
            this.mDataFile1.seek(0);
            byte[] buf = this.mIndexHeader;
            if (this.mIndexFile.read(buf) != 32) {
                Log.w("BlobCache", "cannot read header");
                return false;
            } else if (readInt(buf, 0) != -1289277392) {
                Log.w("BlobCache", "cannot read header magic");
                return false;
            } else if (readInt(buf, 24) != this.mVersion) {
                Log.w("BlobCache", "version mismatch");
                return false;
            } else {
                this.mMaxEntries = readInt(buf, 4);
                this.mMaxBytes = readInt(buf, 8);
                this.mActiveRegion = readInt(buf, 12);
                this.mActiveEntries = readInt(buf, 16);
                this.mActiveBytes = readInt(buf, 20);
                if (checkSum(buf, 0, 28) != readInt(buf, 28)) {
                    Log.w("BlobCache", "header checksum does not match");
                    return false;
                } else if (this.mMaxEntries <= 0) {
                    Log.w("BlobCache", "invalid max entries");
                    return false;
                } else if (this.mMaxBytes <= 0) {
                    Log.w("BlobCache", "invalid max bytes");
                    return false;
                } else if (this.mActiveRegion != 0 && this.mActiveRegion != 1) {
                    Log.w("BlobCache", "invalid active region");
                    return false;
                } else if (this.mActiveEntries < 0 || this.mActiveEntries > this.mMaxEntries) {
                    Log.w("BlobCache", "invalid active entries");
                    return false;
                } else if (this.mActiveBytes < 4 || this.mActiveBytes > this.mMaxBytes) {
                    Log.w("BlobCache", "invalid active bytes");
                    return false;
                } else if (this.mIndexFile.length() != ((long) (((this.mMaxEntries * 12) * 2) + 32))) {
                    Log.w("BlobCache", "invalid index file length");
                    return false;
                } else {
                    byte[] magic = new byte[4];
                    if (this.mDataFile0.read(magic) != 4) {
                        Log.w("BlobCache", "cannot read data file magic");
                        return false;
                    } else if (readInt(magic, 0) != -1121680112) {
                        Log.w("BlobCache", "invalid data file magic");
                        return false;
                    } else if (this.mDataFile1.read(magic) != 4) {
                        Log.w("BlobCache", "cannot read data file magic");
                        return false;
                    } else if (readInt(magic, 0) != -1121680112) {
                        Log.w("BlobCache", "invalid data file magic");
                        return false;
                    } else {
                        this.mIndexChannel = this.mIndexFile.getChannel();
                        this.mIndexBuffer = this.mIndexChannel.map(MapMode.READ_WRITE, 0, this.mIndexFile.length());
                        this.mIndexBuffer.order(ByteOrder.LITTLE_ENDIAN);
                        setActiveVariables();
                        return true;
                    }
                }
            }
        } catch (IOException ex) {
            Log.e("BlobCache", "loadIndex failed.", ex);
            return false;
        }
    }

    private void setActiveVariables() throws IOException {
        this.mActiveDataFile = this.mActiveRegion == 0 ? this.mDataFile0 : this.mDataFile1;
        this.mInactiveDataFile = this.mActiveRegion == 1 ? this.mDataFile0 : this.mDataFile1;
        this.mActiveDataFile.setLength((long) this.mActiveBytes);
        this.mActiveDataFile.seek((long) this.mActiveBytes);
        this.mActiveHashStart = 32;
        this.mInactiveHashStart = 32;
        if (this.mActiveRegion == 0) {
            this.mInactiveHashStart += this.mMaxEntries * 12;
        } else {
            this.mActiveHashStart += this.mMaxEntries * 12;
        }
    }

    private void resetCache(int maxEntries, int maxBytes) throws IOException {
        this.mIndexFile.setLength(0);
        this.mIndexFile.setLength((long) (((maxEntries * 12) * 2) + 32));
        this.mIndexFile.seek(0);
        byte[] buf = this.mIndexHeader;
        writeInt(buf, 0, -1289277392);
        writeInt(buf, 4, maxEntries);
        writeInt(buf, 8, maxBytes);
        writeInt(buf, 12, 0);
        writeInt(buf, 16, 0);
        writeInt(buf, 20, 4);
        writeInt(buf, 24, this.mVersion);
        writeInt(buf, 28, checkSum(buf, 0, 28));
        this.mIndexFile.write(buf);
        this.mDataFile0.setLength(0);
        this.mDataFile1.setLength(0);
        this.mDataFile0.seek(0);
        this.mDataFile1.seek(0);
        writeInt(buf, 0, -1121680112);
        this.mDataFile0.write(buf, 0, 4);
        this.mDataFile1.write(buf, 0, 4);
    }

    private void flipRegion() throws IOException {
        this.mActiveRegion = 1 - this.mActiveRegion;
        this.mActiveEntries = 0;
        this.mActiveBytes = 4;
        writeInt(this.mIndexHeader, 12, this.mActiveRegion);
        writeInt(this.mIndexHeader, 16, this.mActiveEntries);
        writeInt(this.mIndexHeader, 20, this.mActiveBytes);
        updateIndexHeader();
        setActiveVariables();
        clearHash(this.mActiveHashStart);
        syncIndex();
    }

    private void updateIndexHeader() {
        writeInt(this.mIndexHeader, 28, checkSum(this.mIndexHeader, 0, 28));
        this.mIndexBuffer.position(0);
        this.mIndexBuffer.put(this.mIndexHeader);
    }

    private void clearHash(int hashStart) {
        byte[] zero = new byte[1024];
        this.mIndexBuffer.position(hashStart);
        int count = this.mMaxEntries * 12;
        while (count > 0) {
            int todo = Math.min(count, 1024);
            this.mIndexBuffer.put(zero, 0, todo);
            count -= todo;
        }
    }

    public void insert(long key, byte[] data) throws IOException {
        if (data.length + 24 > this.mMaxBytes) {
            throw new RuntimeException("blob is too large!");
        }
        if ((this.mActiveBytes + 20) + data.length > this.mMaxBytes || this.mActiveEntries * 2 >= this.mMaxEntries) {
            flipRegion();
        }
        if (!lookupInternal(key, this.mActiveHashStart)) {
            this.mActiveEntries++;
            writeInt(this.mIndexHeader, 16, this.mActiveEntries);
        }
        insertInternal(key, data, data.length);
        updateIndexHeader();
    }

    private void insertInternal(long key, byte[] data, int length) throws IOException {
        byte[] header = this.mBlobHeader;
        int sum = checkSum(data);
        writeLong(header, 0, key);
        writeInt(header, 8, sum);
        writeInt(header, 12, this.mActiveBytes);
        writeInt(header, 16, length);
        this.mActiveDataFile.write(header);
        this.mActiveDataFile.write(data, 0, length);
        this.mIndexBuffer.putLong(this.mSlotOffset, key);
        this.mIndexBuffer.putInt(this.mSlotOffset + 8, this.mActiveBytes);
        this.mActiveBytes += length + 20;
        writeInt(this.mIndexHeader, 20, this.mActiveBytes);
    }

    public byte[] lookup(long key) throws IOException {
        try {
            this.mLookupRequest.key = key;
            if (lookup(this.mLookupRequest)) {
                byte[] bArr = this.mLookupRequest.buffer;
                return bArr;
            }
            this.mLookupRequest.buffer = null;
            return null;
        } finally {
            this.mLookupRequest.buffer = null;
        }
    }

    public boolean lookup(LookupRequest req) throws IOException {
        if (lookupInternal(req.key, this.mActiveHashStart) && getBlob(this.mActiveDataFile, this.mFileOffset, req)) {
            return true;
        }
        int insertOffset = this.mSlotOffset;
        if (!lookupInternal(req.key, this.mInactiveHashStart) || !getBlob(this.mInactiveDataFile, this.mFileOffset, req)) {
            return false;
        }
        if ((this.mActiveBytes + 20) + req.length > this.mMaxBytes || this.mActiveEntries * 2 >= this.mMaxEntries) {
            return true;
        }
        this.mSlotOffset = insertOffset;
        try {
            insertInternal(req.key, req.buffer, req.length);
            this.mActiveEntries++;
            writeInt(this.mIndexHeader, 16, this.mActiveEntries);
            updateIndexHeader();
            return true;
        } catch (Throwable th) {
            Log.e("BlobCache", "cannot copy over");
            return true;
        }
    }

    private boolean getBlob(RandomAccessFile file, int offset, LookupRequest req) throws IOException {
        byte[] header = this.mBlobHeader;
        long oldPosition = file.getFilePointer();
        boolean z;
        try {
            file.seek((long) offset);
            if (file.read(header) != 20) {
                Log.w("BlobCache", "cannot read blob header");
                z = false;
                return z;
            }
            long blobKey = readLong(header, 0);
            if (blobKey == 0) {
                file.seek(oldPosition);
                return false;
            } else if (blobKey != req.key) {
                Log.w("BlobCache", "blob key does not match: " + blobKey);
                file.seek(oldPosition);
                return false;
            } else {
                int sum = readInt(header, 8);
                int blobOffset = readInt(header, 12);
                if (blobOffset != offset) {
                    Log.w("BlobCache", "blob offset does not match: " + blobOffset);
                    file.seek(oldPosition);
                    return false;
                }
                int length = readInt(header, 16);
                if (length < 0 || length > (this.mMaxBytes - offset) - 20) {
                    Log.w("BlobCache", "invalid blob length: " + length);
                    file.seek(oldPosition);
                    return false;
                }
                if (req.buffer == null || req.buffer.length < length) {
                    req.buffer = new byte[length];
                }
                byte[] blob = req.buffer;
                req.length = length;
                if (file.read(blob, 0, length) != length) {
                    Log.w("BlobCache", "cannot read blob data");
                    file.seek(oldPosition);
                    return false;
                } else if (checkSum(blob, 0, length) != sum) {
                    Log.w("BlobCache", "blob checksum does not match: " + sum);
                    file.seek(oldPosition);
                    return false;
                } else {
                    file.seek(oldPosition);
                    return true;
                }
            }
        } catch (Throwable t) {
            Log.e("BlobCache", "getBlob failed.", t);
            z = false;
        } finally {
            file.seek(oldPosition);
        }
    }

    private boolean lookupInternal(long key, int hashStart) {
        int slot = (int) (key % ((long) this.mMaxEntries));
        if (slot < 0) {
            slot += this.mMaxEntries;
        }
        int slotBegin = slot;
        while (true) {
            int offset = hashStart + (slot * 12);
            long candidateKey = this.mIndexBuffer.getLong(offset);
            int candidateOffset = this.mIndexBuffer.getInt(offset + 8);
            if (candidateOffset == 0) {
                this.mSlotOffset = offset;
                return false;
            } else if (candidateKey == key) {
                this.mSlotOffset = offset;
                this.mFileOffset = candidateOffset;
                return true;
            } else {
                slot++;
                if (slot >= this.mMaxEntries) {
                    slot = 0;
                }
                if (slot == slotBegin) {
                    Log.w("BlobCache", "corrupted index: clear the slot.");
                    this.mIndexBuffer.putInt(((slot * 12) + hashStart) + 8, 0);
                }
            }
        }
    }

    public void syncIndex() {
        try {
            this.mIndexBuffer.force();
        } catch (Throwable t) {
            Log.w("BlobCache", "sync index failed", t);
        }
    }

    public void syncAll() {
        syncIndex();
        try {
            this.mDataFile0.getFD().sync();
        } catch (Throwable t) {
            Log.w("BlobCache", "sync data file 0 failed", t);
        }
        try {
            this.mDataFile1.getFD().sync();
        } catch (Throwable t2) {
            Log.w("BlobCache", "sync data file 1 failed", t2);
        }
    }

    int checkSum(byte[] data) {
        this.mAdler32.reset();
        this.mAdler32.update(data);
        return (int) this.mAdler32.getValue();
    }

    int checkSum(byte[] data, int offset, int nbytes) {
        this.mAdler32.reset();
        this.mAdler32.update(data, offset, nbytes);
        return (int) this.mAdler32.getValue();
    }

    static void closeSilently(Closeable c) {
        if (c != null) {
            try {
                c.close();
            } catch (Throwable th) {
            }
        }
    }

    static int readInt(byte[] buf, int offset) {
        return (((buf[offset] & 255) | ((buf[offset + 1] & 255) << 8)) | ((buf[offset + 2] & 255) << 16)) | ((buf[offset + 3] & 255) << 24);
    }

    static long readLong(byte[] buf, int offset) {
        long result = (long) (buf[offset + 7] & 255);
        for (int i = 6; i >= 0; i--) {
            result = (result << 8) | ((long) (buf[offset + i] & 255));
        }
        return result;
    }

    static void writeInt(byte[] buf, int offset, int value) {
        for (int i = 0; i < 4; i++) {
            buf[offset + i] = (byte) (value & 255);
            value >>= 8;
        }
    }

    static void writeLong(byte[] buf, int offset, long value) {
        for (int i = 0; i < 8; i++) {
            buf[offset + i] = (byte) ((int) (255 & value));
            value >>= 8;
        }
    }
}
