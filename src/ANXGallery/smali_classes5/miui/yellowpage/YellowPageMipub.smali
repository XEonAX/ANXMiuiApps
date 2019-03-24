.class public Lmiui/yellowpage/YellowPageMipub;
.super Ljava/lang/Object;
.source "YellowPageMipub.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private mMipubId:Ljava/lang/String;

.field private mThumbnailName:Ljava/lang/String;

.field private mYpId:J

.field private mYpName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V
    .locals 0
    .param p1, "mipubId"    # Ljava/lang/String;
    .param p2, "ypName"    # Ljava/lang/String;
    .param p3, "ypId"    # J
    .param p5, "thumbnailName"    # Ljava/lang/String;

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lmiui/yellowpage/YellowPageMipub;->mMipubId:Ljava/lang/String;

    .line 15
    iput-object p2, p0, Lmiui/yellowpage/YellowPageMipub;->mYpName:Ljava/lang/String;

    .line 16
    iput-wide p3, p0, Lmiui/yellowpage/YellowPageMipub;->mYpId:J

    .line 17
    iput-object p5, p0, Lmiui/yellowpage/YellowPageMipub;->mThumbnailName:Ljava/lang/String;

    .line 18
    return-void
.end method


# virtual methods
.method public getMipubId()Ljava/lang/String;
    .locals 1

    .line 21
    iget-object v0, p0, Lmiui/yellowpage/YellowPageMipub;->mMipubId:Ljava/lang/String;

    return-object v0
.end method

.method public getThumbnailName()Ljava/lang/String;
    .locals 1

    .line 33
    iget-object v0, p0, Lmiui/yellowpage/YellowPageMipub;->mThumbnailName:Ljava/lang/String;

    return-object v0
.end method

.method public getYpId()J
    .locals 2

    .line 29
    iget-wide v0, p0, Lmiui/yellowpage/YellowPageMipub;->mYpId:J

    return-wide v0
.end method

.method public getYpName()Ljava/lang/String;
    .locals 1

    .line 25
    iget-object v0, p0, Lmiui/yellowpage/YellowPageMipub;->mYpName:Ljava/lang/String;

    return-object v0
.end method
