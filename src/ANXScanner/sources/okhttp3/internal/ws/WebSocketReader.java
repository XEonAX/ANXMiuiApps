package okhttp3.internal.ws;

import com.taobao.ma.decode.DecodeType;
import java.io.IOException;
import java.net.ProtocolException;
import java.util.concurrent.TimeUnit;
import okio.Buffer;
import okio.Buffer.UnsafeCursor;
import okio.BufferedSource;
import okio.ByteString;
import okio.Timeout;

final class WebSocketReader {
    boolean closed;
    private final Buffer controlFrameBuffer = new Buffer();
    final FrameCallback frameCallback;
    long frameLength;
    final boolean isClient;
    boolean isControlFrame;
    boolean isFinalFrame;
    private final UnsafeCursor maskCursor;
    private final byte[] maskKey;
    private final Buffer messageFrameBuffer = new Buffer();
    int opcode;
    final BufferedSource source;

    public interface FrameCallback {
        void onReadClose(int i, String str);

        void onReadMessage(String str) throws IOException;

        void onReadMessage(ByteString byteString) throws IOException;

        void onReadPing(ByteString byteString);

        void onReadPong(ByteString byteString);
    }

    WebSocketReader(boolean isClient, BufferedSource source, FrameCallback frameCallback) {
        UnsafeCursor unsafeCursor = null;
        if (source == null) {
            throw new NullPointerException("source == null");
        } else if (frameCallback == null) {
            throw new NullPointerException("frameCallback == null");
        } else {
            this.isClient = isClient;
            this.source = source;
            this.frameCallback = frameCallback;
            this.maskKey = isClient ? null : new byte[4];
            if (!isClient) {
                unsafeCursor = new UnsafeCursor();
            }
            this.maskCursor = unsafeCursor;
        }
    }

    void processNextFrame() throws IOException {
        readHeader();
        if (this.isControlFrame) {
            readControlFrame();
        } else {
            readMessageFrame();
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:21:0x0063  */
    /* JADX WARNING: Removed duplicated region for block: B:9:0x003c  */
    /* JADX WARNING: Removed duplicated region for block: B:22:0x0065  */
    /* JADX WARNING: Removed duplicated region for block: B:12:0x0043  */
    /* JADX WARNING: Removed duplicated region for block: B:37:0x0084  */
    /* JADX WARNING: Removed duplicated region for block: B:25:0x006b  */
    /* JADX WARNING: Removed duplicated region for block: B:38:0x0086  */
    /* JADX WARNING: Removed duplicated region for block: B:28:0x0070  */
    /* JADX WARNING: Removed duplicated region for block: B:39:0x0088  */
    /* JADX WARNING: Removed duplicated region for block: B:31:0x0075  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private void readHeader() throws IOException {
        int b0;
        boolean z;
        boolean reservedFlag1;
        Timeout timeout = true;
        TimeUnit timeUnit = null;
        if (this.closed) {
            throw new IOException("closed");
        }
        Timeout readByte;
        long timeoutBefore = this.source.timeout().timeoutNanos();
        this.source.timeout().clearTimeout();
        try {
            readByte = this.source.readByte();
            b0 = readByte & 255;
        } finally {
            timeout = readByte;
            timeout = this.source.timeout();
            timeUnit = TimeUnit.NANOSECONDS;
            timeout.timeout(timeoutBefore, timeUnit);
            if (readByte == null) {
            }
            this.isFinalFrame = z;
            if ((b0 & 8) == 0) {
            }
            this.isControlFrame = z;
            if (this.isControlFrame) {
            }
            if ((b0 & 64) == 0) {
            }
            if ((b0 & 32) == 0) {
            }
            if ((b0 & 16) == 0) {
            }
            if (!reservedFlag1) {
            }
            throw new ProtocolException("Reserved flags are unsupported.");
        }
        if (readByte == null) {
            z = timeout;
        } else {
            z = timeUnit;
        }
        this.isFinalFrame = z;
        if ((b0 & 8) == 0) {
            z = timeout;
        } else {
            z = timeUnit;
        }
        this.isControlFrame = z;
        if (this.isControlFrame || this.isFinalFrame) {
            if ((b0 & 64) == 0) {
                reservedFlag1 = timeout;
            } else {
                reservedFlag1 = timeUnit;
            }
            boolean reservedFlag2;
            if ((b0 & 32) == 0) {
                reservedFlag2 = timeout;
            } else {
                reservedFlag2 = timeUnit;
            }
            boolean reservedFlag3;
            if ((b0 & 16) == 0) {
                reservedFlag3 = timeout;
            } else {
                reservedFlag3 = timeUnit;
            }
            if (reservedFlag1 || reservedFlag2 || reservedFlag3) {
                throw new ProtocolException("Reserved flags are unsupported.");
            }
            boolean isMasked;
            int b1 = this.source.readByte() & 255;
            if ((b1 & 128) != 0) {
                isMasked = timeout;
            } else {
                isMasked = timeUnit;
            }
            if (isMasked == this.isClient) {
                String str;
                if (this.isClient) {
                    str = "Server-sent frames must not be masked.";
                } else {
                    str = "Client-sent frames must be masked.";
                }
                throw new ProtocolException(str);
            }
            this.frameLength = (long) (b1 & DecodeType.ONE);
            if (this.frameLength == 126) {
                this.frameLength = ((long) this.source.readShort()) & 65535;
            } else if (this.frameLength == 127) {
                this.frameLength = this.source.readLong();
                if (this.frameLength < 0) {
                    throw new ProtocolException("Frame length 0x" + Long.toHexString(this.frameLength) + " > 0x7FFFFFFFFFFFFFFF");
                }
            }
            if (this.isControlFrame && this.frameLength > 125) {
                throw new ProtocolException("Control frame must be less than 125B.");
            } else if (isMasked) {
                this.source.readFully(this.maskKey);
                return;
            } else {
                return;
            }
        }
        throw new ProtocolException("Control frames must be final.");
    }

    private void readControlFrame() throws IOException {
        if (this.frameLength > 0) {
            this.source.readFully(this.controlFrameBuffer, this.frameLength);
            if (!this.isClient) {
                this.controlFrameBuffer.readAndWriteUnsafe(this.maskCursor);
                this.maskCursor.seek(0);
                WebSocketProtocol.toggleMask(this.maskCursor, this.maskKey);
                this.maskCursor.close();
            }
        }
        switch (this.opcode) {
            case 8:
                int code = 1005;
                String reason = "";
                long bufferSize = this.controlFrameBuffer.size();
                if (bufferSize == 1) {
                    throw new ProtocolException("Malformed close payload length of 1.");
                }
                if (bufferSize != 0) {
                    code = this.controlFrameBuffer.readShort();
                    reason = this.controlFrameBuffer.readUtf8();
                    String codeExceptionMessage = WebSocketProtocol.closeCodeExceptionMessage(code);
                    if (codeExceptionMessage != null) {
                        throw new ProtocolException(codeExceptionMessage);
                    }
                }
                this.frameCallback.onReadClose(code, reason);
                this.closed = true;
                return;
            case 9:
                this.frameCallback.onReadPing(this.controlFrameBuffer.readByteString());
                return;
            case 10:
                this.frameCallback.onReadPong(this.controlFrameBuffer.readByteString());
                return;
            default:
                throw new ProtocolException("Unknown control opcode: " + Integer.toHexString(this.opcode));
        }
    }

    private void readMessageFrame() throws IOException {
        int opcode = this.opcode;
        if (opcode == 1 || opcode == 2) {
            readMessage();
            if (opcode == 1) {
                this.frameCallback.onReadMessage(this.messageFrameBuffer.readUtf8());
                return;
            } else {
                this.frameCallback.onReadMessage(this.messageFrameBuffer.readByteString());
                return;
            }
        }
        throw new ProtocolException("Unknown opcode: " + Integer.toHexString(opcode));
    }

    private void readUntilNonControlFrame() throws IOException {
        while (!this.closed) {
            readHeader();
            if (this.isControlFrame) {
                readControlFrame();
            } else {
                return;
            }
        }
    }

    private void readMessage() throws IOException {
        while (!this.closed) {
            if (this.frameLength > 0) {
                this.source.readFully(this.messageFrameBuffer, this.frameLength);
                if (!this.isClient) {
                    this.messageFrameBuffer.readAndWriteUnsafe(this.maskCursor);
                    this.maskCursor.seek(this.messageFrameBuffer.size() - this.frameLength);
                    WebSocketProtocol.toggleMask(this.maskCursor, this.maskKey);
                    this.maskCursor.close();
                }
            }
            if (!this.isFinalFrame) {
                readUntilNonControlFrame();
                if (this.opcode != 0) {
                    throw new ProtocolException("Expected continuation opcode. Got: " + Integer.toHexString(this.opcode));
                }
            }
            return;
        }
        throw new IOException("closed");
    }
}
