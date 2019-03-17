.class Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerProvider$InitializeException;
.super Ljava/lang/Exception;
.source "StickerProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/editor/photo/core/imports/sticker/StickerProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InitializeException"
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "detailMessage"    # Ljava/lang/String;

    .prologue
    .line 418
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 419
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "detailMessage"    # Ljava/lang/String;
    .param p2, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 422
    invoke-direct {p0, p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 423
    return-void
.end method
