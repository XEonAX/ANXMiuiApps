package cn.kuaipan.android.kss;

public interface IKssDownloadRequestResult {

    public static class Block {
        public final String sha1;
        public final long size;
        public final String[] urls;

        public Block(String sha1, String[] urls, long size) {
            this.sha1 = sha1;
            this.urls = urls;
            this.size = size;
        }
    }

    Block getBlock(int i);

    int getBlockCount();

    String[] getBlockUrls(long j);

    String getHash();

    String getMessage();

    long getModifyTime();

    byte[] getSecureKey();

    int getStatus();

    long getTotalSize();
}
