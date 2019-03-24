.class public interface abstract Lmiui/imagefilters/IImageFilter;
.super Ljava/lang/Object;
.source "IImageFilter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/imagefilters/IImageFilter$ImageFilterGroup;,
        Lmiui/imagefilters/IImageFilter$AbstractImageFilter;
    }
.end annotation


# virtual methods
.method public abstract canConcurrence()Z
.end method

.method public abstract initParams(Ljava/lang/String;Ljava/util/List;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation
.end method

.method public abstract process(Lmiui/imagefilters/ImageData;)V
.end method

.method public abstract putOriginalImage(Landroid/graphics/Bitmap;)V
.end method
