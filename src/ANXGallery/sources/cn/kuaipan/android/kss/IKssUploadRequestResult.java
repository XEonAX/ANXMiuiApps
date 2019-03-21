package cn.kuaipan.android.kss;

public interface IKssUploadRequestResult {

    public static class Block {
        public boolean exist;
        public String meta;

        public Block(String meta, boolean exist) {
            this.meta = meta;
            this.exist = exist;
        }

        public boolean isComplete() {
            return this.exist;
        }
    }

    Block getBlock(int i);

    int getBlockCount();

    String getFileMeta();

    String[] getNodeUrls();

    byte[] getSecureKey();

    boolean isCompleted();
}
