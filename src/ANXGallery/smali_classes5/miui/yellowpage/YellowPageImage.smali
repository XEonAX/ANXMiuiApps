.class public Lmiui/yellowpage/YellowPageImage;
.super Lmiui/yellowpage/YellowPageImgLoader$Image;
.source "YellowPageImage.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private mName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;IILmiui/yellowpage/YellowPageImgLoader$Image$ImageFormat;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "format"    # Lmiui/yellowpage/YellowPageImgLoader$Image$ImageFormat;

    .line 13
    invoke-static {p1, p2, p3, p4, p5}, Lmiui/yellowpage/HostManager;->getImageUrl(Landroid/content/Context;Ljava/lang/String;IILmiui/yellowpage/YellowPageImgLoader$Image$ImageFormat;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lmiui/yellowpage/YellowPageImgLoader$Image;-><init>(Ljava/lang/String;)V

    .line 14
    iput-object p2, p0, Lmiui/yellowpage/YellowPageImage;->mName:Ljava/lang/String;

    .line 15
    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .line 19
    iget-object v0, p0, Lmiui/yellowpage/YellowPageImage;->mName:Ljava/lang/String;

    invoke-static {v0}, Lmiui/util/CoderUtils;->encodeSHA(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
