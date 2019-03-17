package org.android.spdy;

public class ProtectedPointerTest {

    static class Data {
        private int i = 0;

        Data() {
        }

        public void work() {
            System.out.println("work");
            if (this.i == 1) {
                System.exit(-1);
            }
        }

        public void destroy() {
            System.out.println("destroy");
            this.i = 1;
        }
    }

    public static void test_sequece(ProtectedPointer pptr) {
        pptr.release();
    }

    public static void test_close_with_work(final ProtectedPointer pptr) {
        Thread a = new Thread(new Runnable() {
            public void run() {
                for (int i = 0; i < 1000; i++) {
                    if (pptr.enter()) {
                        ((Data) pptr.getData()).work();
                        pptr.exit();
                    } else {
                        System.out.println("the data has been destroy");
                    }
                }
            }
        });
        new Thread(new Runnable() {
            public void run() {
                pptr.release();
            }
        }).run();
        a.run();
    }

    public static void test_close_anywhere1(ProtectedPointer pptr) {
        if (pptr.enter()) {
            Data data = (Data) pptr.getData();
            pptr.release();
            data.work();
            pptr.exit();
        }
    }

    public static void main(String[] args) {
        for (int i = 0; i < 1; i++) {
            ProtectedPointer pptr = new ProtectedPointer(new Data());
            pptr.setHow2close(new ProtectedPointerOnClose() {
                public void close(Object data) {
                    ((Data) data).destroy();
                }
            });
            test_close_with_work(pptr);
        }
    }
}
