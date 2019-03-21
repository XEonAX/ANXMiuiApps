package org.jcodec.containers.mp4.demuxer;

import android.support.annotation.Keep;
import java.nio.ByteBuffer;
import org.jcodec.common.Fourcc;
import org.jcodec.common.io.NIOUtils;
import org.jcodec.platform.Platform;

public class MP4Demuxer {
    @Keep
    public static int probe(ByteBuffer b) {
        ByteBuffer fork = b.duplicate();
        int success = 0;
        int total = 0;
        while (fork.remaining() >= 8) {
            long len = Platform.unsignedInt(fork.getInt());
            int fcc = fork.getInt();
            int hdrLen = 8;
            if (len != 1) {
                if (len < 8) {
                    break;
                }
            }
            len = fork.getLong();
            hdrLen = 16;
            if ((fcc == Fourcc.ftyp && len < 64) || ((fcc == Fourcc.moov && len < 104857600) || fcc == Fourcc.free || fcc == Fourcc.mdat || fcc == Fourcc.wide)) {
                success++;
            }
            total++;
            if (len >= 2147483647L) {
                break;
            }
            NIOUtils.skip(fork, (int) (len - ((long) hdrLen)));
        }
        if (total == 0) {
            return 0;
        }
        return (success * 100) / total;
    }
}
