package cn.kuaipan.android.http;

import java.util.zip.DataFormatException;

public interface IKscDecoder extends Cloneable {
    boolean canEnd();

    void end();

    void fillData(byte[] bArr, int i, int i2);

    void init();

    int needFill();

    int readDecodeData(byte[] bArr, int i, int i2) throws DataFormatException;

    void skip(long j);

    boolean supportRepeat();
}
