.class public Lcom/hanvon/ocrtranslate/Ocr;
.super Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "hw_instanttrans"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public static native instantTransArea(Ljava/lang/String;Ljava/lang/String;III[B[IIIII[I[I[I[I[I)I
.end method

.method public static native instantTransPoint(Ljava/lang/String;Ljava/lang/String;III[B[III[I[I[I[I[I)I
.end method
