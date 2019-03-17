.class public Lcom/hanvon/ocrtranslate/CNTools;
.super Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "hwocr_cntools_shared"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public static native nativeGetLongestSubstr(Ljava/lang/String;I)Ljava/lang/String;
.end method
