.class Lcom/miui/gallery/adapter/IgnorePeoplePageAdapter$ViewHolder;
.super Lcom/miui/gallery/ui/FaceDisplayItemPreferFromThumbnailSource;
.source "IgnorePeoplePageAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/adapter/IgnorePeoplePageAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewHolder"
.end annotation


# instance fields
.field private mFacePosition:Landroid/graphics/RectF;

.field private mThumbnail:Ljava/lang/String;

.field final synthetic this$0:Lcom/miui/gallery/adapter/IgnorePeoplePageAdapter;


# direct methods
.method public constructor <init>(Lcom/miui/gallery/adapter/IgnorePeoplePageAdapter;Landroid/content/Context;Landroid/util/AttributeSet;Landroid/view/View;)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "attrs"    # Landroid/util/AttributeSet;
    .param p4, "view"    # Landroid/view/View;

    .prologue
    .line 96
    iput-object p1, p0, Lcom/miui/gallery/adapter/IgnorePeoplePageAdapter$ViewHolder;->this$0:Lcom/miui/gallery/adapter/IgnorePeoplePageAdapter;

    .line 97
    invoke-direct {p0, p2, p3}, Lcom/miui/gallery/ui/FaceDisplayItemPreferFromThumbnailSource;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 98
    const v0, 0x7f1200cd

    invoke-virtual {p4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/gallery/adapter/IgnorePeoplePageAdapter$ViewHolder;->mCover:Landroid/widget/ImageView;

    .line 99
    return-void
.end method

.method static synthetic access$100(Lcom/miui/gallery/adapter/IgnorePeoplePageAdapter$ViewHolder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/adapter/IgnorePeoplePageAdapter$ViewHolder;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/miui/gallery/adapter/IgnorePeoplePageAdapter$ViewHolder;->mThumbnail:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/miui/gallery/adapter/IgnorePeoplePageAdapter$ViewHolder;)Landroid/graphics/RectF;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/adapter/IgnorePeoplePageAdapter$ViewHolder;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/miui/gallery/adapter/IgnorePeoplePageAdapter$ViewHolder;->mFacePosition:Landroid/graphics/RectF;

    return-object v0
.end method


# virtual methods
.method public bindData(Landroid/database/Cursor;)V
    .locals 5
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 111
    invoke-static {p1}, Lcom/miui/gallery/util/face/PeopleCursorHelper;->getPeopleLocalId(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v0

    .line 112
    .local v0, "localId":Ljava/lang/String;
    invoke-static {p1}, Lcom/miui/gallery/util/face/PeopleCursorHelper;->getPeopleServerId(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v2

    .line 113
    .local v2, "serverId":Ljava/lang/String;
    invoke-static {p1}, Lcom/miui/gallery/util/face/PeopleCursorHelper;->getPeopleName(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v1

    .line 114
    .local v1, "name":Ljava/lang/String;
    iget-object v3, p0, Lcom/miui/gallery/adapter/IgnorePeoplePageAdapter$ViewHolder;->mCover:Landroid/widget/ImageView;

    new-instance v4, Lcom/miui/gallery/adapter/IgnorePeoplePageAdapter$ViewHolder$1;

    invoke-direct {v4, p0, v0, v2, v1}, Lcom/miui/gallery/adapter/IgnorePeoplePageAdapter$ViewHolder$1;-><init>(Lcom/miui/gallery/adapter/IgnorePeoplePageAdapter$ViewHolder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 123
    return-void
.end method

.method public bindImage(Ljava/lang/String;Landroid/net/Uri;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;Landroid/graphics/RectF;Lcom/miui/gallery/sdk/download/DownloadType;)V
    .locals 0
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "downloadUri"    # Landroid/net/Uri;
    .param p3, "options"    # Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
    .param p4, "facePosition"    # Landroid/graphics/RectF;
    .param p5, "sourceType"    # Lcom/miui/gallery/sdk/download/DownloadType;

    .prologue
    .line 105
    invoke-super/range {p0 .. p5}, Lcom/miui/gallery/ui/FaceDisplayItemPreferFromThumbnailSource;->bindImage(Ljava/lang/String;Landroid/net/Uri;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;Landroid/graphics/RectF;Lcom/miui/gallery/sdk/download/DownloadType;)V

    .line 106
    iput-object p1, p0, Lcom/miui/gallery/adapter/IgnorePeoplePageAdapter$ViewHolder;->mThumbnail:Ljava/lang/String;

    .line 107
    iput-object p4, p0, Lcom/miui/gallery/adapter/IgnorePeoplePageAdapter$ViewHolder;->mFacePosition:Landroid/graphics/RectF;

    .line 108
    return-void
.end method
