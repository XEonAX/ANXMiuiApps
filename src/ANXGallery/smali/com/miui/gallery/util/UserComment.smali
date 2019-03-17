.class Lcom/miui/gallery/util/UserComment;
.super Ljava/lang/Object;
.source "ExifUtil.java"


# instance fields
.field private mExif:Lcom/miui/gallery/util/ExifInterfaceWrapper;

.field private mIsOriginalUserCommentUsable:Z

.field private mJsonUserComment:Lorg/json/JSONObject;


# direct methods
.method constructor <init>(Lcom/miui/gallery/util/ExifInterfaceWrapper;)V
    .locals 5
    .param p1, "exif"    # Lcom/miui/gallery/util/ExifInterfaceWrapper;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 681
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 679
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/miui/gallery/util/UserComment;->mIsOriginalUserCommentUsable:Z

    .line 682
    iput-object p1, p0, Lcom/miui/gallery/util/UserComment;->mExif:Lcom/miui/gallery/util/ExifInterfaceWrapper;

    .line 684
    invoke-virtual {p1}, Lcom/miui/gallery/util/ExifInterfaceWrapper;->getUserComment()Ljava/lang/String;

    move-result-object v2

    .line 686
    .local v2, "userComment":Ljava/lang/String;
    :try_start_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 687
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    iput-object v3, p0, Lcom/miui/gallery/util/UserComment;->mJsonUserComment:Lorg/json/JSONObject;

    .line 702
    :goto_0
    return-void

    .line 689
    :cond_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lcom/miui/gallery/util/UserComment;->mJsonUserComment:Lorg/json/JSONObject;

    .line 690
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/miui/gallery/util/UserComment;->mIsOriginalUserCommentUsable:Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 692
    :catch_0
    move-exception v0

    .line 694
    .local v0, "e":Lorg/json/JSONException;
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    iput-object v3, p0, Lcom/miui/gallery/util/UserComment;->mJsonUserComment:Lorg/json/JSONObject;

    .line 695
    const-string v3, "UserComment"

    const-string/jumbo v4, "userComment %s is not a json object"

    invoke-static {v3, v4, v2}, Lcom/miui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 696
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 697
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 698
    .local v1, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v3, "usercomment"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 699
    const-string v3, "exception"

    invoke-virtual {v0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 700
    const-string v3, "exif_parser"

    const-string v4, "exif_invalid_usercomment"

    invoke-static {v3, v4, v1}, Lcom/miui/gallery/stat/BaseSamplingStatHelper;->recordErrorEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0
.end method


# virtual methods
.method getFileExt()Ljava/lang/String;
    .locals 2

    .prologue
    .line 713
    iget-object v0, p0, Lcom/miui/gallery/util/UserComment;->mJsonUserComment:Lorg/json/JSONObject;

    const-string v1, "ext"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getSha1()Ljava/lang/String;
    .locals 2

    .prologue
    .line 709
    iget-object v0, p0, Lcom/miui/gallery/util/UserComment;->mJsonUserComment:Lorg/json/JSONObject;

    const-string/jumbo v1, "sha1"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method isOriginalUserCommentUsable()Z
    .locals 1

    .prologue
    .line 705
    iget-boolean v0, p0, Lcom/miui/gallery/util/UserComment;->mIsOriginalUserCommentUsable:Z

    return v0
.end method

.method setData(Lcom/miui/gallery/util/ExifUtil$UserCommentData;)V
    .locals 3
    .param p1, "data"    # Lcom/miui/gallery/util/ExifUtil$UserCommentData;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 717
    if-nez p1, :cond_0

    .line 723
    :goto_0
    return-void

    .line 720
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/util/UserComment;->mJsonUserComment:Lorg/json/JSONObject;

    const-string/jumbo v1, "sha1"

    invoke-virtual {p1}, Lcom/miui/gallery/util/ExifUtil$UserCommentData;->getSha1()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 721
    iget-object v0, p0, Lcom/miui/gallery/util/UserComment;->mJsonUserComment:Lorg/json/JSONObject;

    const-string v1, "ext"

    invoke-virtual {p1}, Lcom/miui/gallery/util/ExifUtil$UserCommentData;->getExt()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 722
    iget-object v0, p0, Lcom/miui/gallery/util/UserComment;->mExif:Lcom/miui/gallery/util/ExifInterfaceWrapper;

    invoke-virtual {p0}, Lcom/miui/gallery/util/UserComment;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/gallery/util/ExifInterfaceWrapper;->setUserComment(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 727
    invoke-virtual {p0}, Lcom/miui/gallery/util/UserComment;->getSha1()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/gallery/util/UserComment;->getFileExt()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 728
    const-string v0, ""

    .line 730
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/util/UserComment;->mJsonUserComment:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
