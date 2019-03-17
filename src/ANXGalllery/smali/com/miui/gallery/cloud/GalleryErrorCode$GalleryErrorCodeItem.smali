.class public Lcom/miui/gallery/cloud/GalleryErrorCode$GalleryErrorCodeItem;
.super Ljava/lang/Object;
.source "GalleryErrorCode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/cloud/GalleryErrorCode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GalleryErrorCodeItem"
.end annotation


# instance fields
.field code:I

.field errorHandler:Lcom/miui/gallery/cloud/GalleryErrorCode$GalleryErrorHandler;

.field result:Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;


# direct methods
.method public constructor <init>(ILcom/miui/gallery/cloud/CheckResult$GallerySyncResult;Lcom/miui/gallery/cloud/GalleryErrorCode$GalleryErrorHandler;)V
    .locals 0
    .param p1, "code"    # I
    .param p2, "result"    # Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;
    .param p3, "errorHandler"    # Lcom/miui/gallery/cloud/GalleryErrorCode$GalleryErrorHandler;

    .prologue
    .line 165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 166
    iput p1, p0, Lcom/miui/gallery/cloud/GalleryErrorCode$GalleryErrorCodeItem;->code:I

    .line 167
    iput-object p2, p0, Lcom/miui/gallery/cloud/GalleryErrorCode$GalleryErrorCodeItem;->result:Lcom/miui/gallery/cloud/CheckResult$GallerySyncResult;

    .line 168
    iput-object p3, p0, Lcom/miui/gallery/cloud/GalleryErrorCode$GalleryErrorCodeItem;->errorHandler:Lcom/miui/gallery/cloud/GalleryErrorCode$GalleryErrorHandler;

    .line 169
    return-void
.end method
