.class public Lmiui/imagefilters/ImageFilterBuilder$NoSupportException;
.super Ljava/lang/Exception;
.source "ImageFilterBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/imagefilters/ImageFilterBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NoSupportException"
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;

    .line 12
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 13
    return-void
.end method
