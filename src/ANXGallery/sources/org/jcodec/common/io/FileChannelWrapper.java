package org.jcodec.common.io;

import java.io.FileNotFoundException;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.channels.FileChannel;

public class FileChannelWrapper implements SeekableByteChannel {
    private FileChannel ch;

    public FileChannelWrapper(FileChannel ch) throws FileNotFoundException {
        this.ch = ch;
    }

    public int read(ByteBuffer arg0) throws IOException {
        return this.ch.read(arg0);
    }

    public void close() throws IOException {
        this.ch.close();
    }

    public boolean isOpen() {
        return this.ch.isOpen();
    }

    public int write(ByteBuffer arg0) throws IOException {
        return this.ch.write(arg0);
    }

    public SeekableByteChannel setPosition(long newPosition) throws IOException {
        this.ch.position(newPosition);
        return this;
    }

    public long size() throws IOException {
        return this.ch.size();
    }
}
