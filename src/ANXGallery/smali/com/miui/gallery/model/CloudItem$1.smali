.class Lcom/miui/gallery/model/CloudItem$1;
.super Ljava/lang/Object;
.source "CloudItem.java"

# interfaces
.implements Lcom/miui/gallery/util/SafeDBUtil$QueryHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/model/CloudItem;->getDetailInfo(Landroid/content/Context;)Lcom/miui/gallery/model/PhotoDetailInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/model/CloudItem;

.field final synthetic val$info:Lcom/miui/gallery/model/PhotoDetailInfo;


# direct methods
.method constructor <init>(Lcom/miui/gallery/model/CloudItem;Lcom/miui/gallery/model/PhotoDetailInfo;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/model/CloudItem;

    .prologue
    .line 189
    iput-object p1, p0, Lcom/miui/gallery/model/CloudItem$1;->this$0:Lcom/miui/gallery/model/CloudItem;

    iput-object p2, p0, Lcom/miui/gallery/model/CloudItem$1;->val$info:Lcom/miui/gallery/model/PhotoDetailInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handle(Landroid/database/Cursor;)Ljava/lang/Object;
    .locals 5
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    const/4 v4, 0x2

    .line 192
    if-eqz p1, :cond_3

    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 193
    iget-object v1, p0, Lcom/miui/gallery/model/CloudItem$1;->val$info:Lcom/miui/gallery/model/PhotoDetailInfo;

    invoke-virtual {v1, v4}, Lcom/miui/gallery/model/PhotoDetailInfo;->getDetail(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/miui/gallery/model/CloudItem$1;->this$0:Lcom/miui/gallery/model/CloudItem;

    invoke-virtual {v1}, Lcom/miui/gallery/model/CloudItem;->isSecret()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 194
    :cond_0
    iget-object v1, p0, Lcom/miui/gallery/model/CloudItem$1;->val$info:Lcom/miui/gallery/model/PhotoDetailInfo;

    const/4 v2, 0x0

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v4, v2}, Lcom/miui/gallery/model/PhotoDetailInfo;->addDetail(ILjava/lang/Object;)V

    .line 196
    :cond_1
    iget-object v1, p0, Lcom/miui/gallery/model/CloudItem$1;->val$info:Lcom/miui/gallery/model/PhotoDetailInfo;

    const/16 v2, 0x65

    const/4 v3, 0x1

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/miui/gallery/model/PhotoDetailInfo;->addDetail(ILjava/lang/Object;)V

    .line 197
    iget-object v1, p0, Lcom/miui/gallery/model/CloudItem$1;->val$info:Lcom/miui/gallery/model/PhotoDetailInfo;

    const/16 v2, 0x64

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/miui/gallery/model/PhotoDetailInfo;->addDetail(ILjava/lang/Object;)V

    .line 198
    iget-object v1, p0, Lcom/miui/gallery/model/CloudItem$1;->val$info:Lcom/miui/gallery/model/PhotoDetailInfo;

    const/16 v2, 0x69

    const/4 v3, 0x3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/miui/gallery/model/PhotoDetailInfo;->addDetail(ILjava/lang/Object;)V

    .line 199
    const/4 v1, 0x4

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 200
    .local v0, "focalLenght":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 201
    iget-object v1, p0, Lcom/miui/gallery/model/CloudItem$1;->val$info:Lcom/miui/gallery/model/PhotoDetailInfo;

    const/16 v2, 0x67

    .line 202
    invoke-static {v0}, Lcom/miui/gallery/model/PhotoDetailInfo;->wrapFocalLength(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v3

    .line 201
    invoke-virtual {v1, v2, v3}, Lcom/miui/gallery/model/PhotoDetailInfo;->addDetail(ILjava/lang/Object;)V

    .line 204
    :cond_2
    iget-object v1, p0, Lcom/miui/gallery/model/CloudItem$1;->val$info:Lcom/miui/gallery/model/PhotoDetailInfo;

    const/16 v2, 0x6c

    const/4 v3, 0x5

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/miui/gallery/model/PhotoDetailInfo;->addDetail(ILjava/lang/Object;)V

    .line 205
    iget-object v1, p0, Lcom/miui/gallery/model/CloudItem$1;->val$info:Lcom/miui/gallery/model/PhotoDetailInfo;

    const/16 v2, 0x6b

    const/4 v3, 0x6

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/miui/gallery/model/PhotoDetailInfo;->addDetail(ILjava/lang/Object;)V

    .line 206
    iget-object v1, p0, Lcom/miui/gallery/model/CloudItem$1;->val$info:Lcom/miui/gallery/model/PhotoDetailInfo;

    const/16 v2, 0x66

    const/4 v3, 0x7

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/miui/gallery/model/PhotoDetailInfo;->addDetail(ILjava/lang/Object;)V

    .line 207
    iget-object v1, p0, Lcom/miui/gallery/model/CloudItem$1;->val$info:Lcom/miui/gallery/model/PhotoDetailInfo;

    .line 209
    .end local v0    # "focalLenght":Ljava/lang/String;
    :goto_0
    return-object v1

    :cond_3
    const/4 v1, 0x0

    goto :goto_0
.end method
