.class public Lcom/miui/gallery/editor/photo/core/imports/text/dialog/DialogManager;
.super Ljava/lang/Object;
.source "DialogManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/editor/photo/core/imports/text/dialog/DialogManager$LocalDialog;
    }
.end annotation


# instance fields
.field private mDialogModelList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/editor/photo/core/imports/text/dialog/BaseDialogModel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 15

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/dialog/DialogManager;->mDialogModelList:Ljava/util/List;

    .line 18
    invoke-static {}, Lcom/miui/gallery/editor/photo/core/imports/text/dialog/DialogManager$LocalDialog;->values()[Lcom/miui/gallery/editor/photo/core/imports/text/dialog/DialogManager$LocalDialog;

    move-result-object v13

    array-length v14, v13

    const/4 v1, 0x0

    move v12, v1

    :goto_0
    if-ge v12, v14, :cond_0

    aget-object v11, v13, v12

    .line 19
    .local v11, "localDialog":Lcom/miui/gallery/editor/photo/core/imports/text/dialog/DialogManager$LocalDialog;
    new-instance v0, Lcom/miui/gallery/editor/photo/core/imports/text/dialog/LocalDialogModel;

    iget v1, v11, Lcom/miui/gallery/editor/photo/core/imports/text/dialog/DialogManager$LocalDialog;->mBackGroundColor:I

    iget v2, v11, Lcom/miui/gallery/editor/photo/core/imports/text/dialog/DialogManager$LocalDialog;->mSmallIcon:I

    iget v3, v11, Lcom/miui/gallery/editor/photo/core/imports/text/dialog/DialogManager$LocalDialog;->mGraphics:I

    iget v4, v11, Lcom/miui/gallery/editor/photo/core/imports/text/dialog/DialogManager$LocalDialog;->mLeftPercent:F

    iget v5, v11, Lcom/miui/gallery/editor/photo/core/imports/text/dialog/DialogManager$LocalDialog;->mTopPercent:F

    iget v6, v11, Lcom/miui/gallery/editor/photo/core/imports/text/dialog/DialogManager$LocalDialog;->mRightPercent:F

    iget v7, v11, Lcom/miui/gallery/editor/photo/core/imports/text/dialog/DialogManager$LocalDialog;->mBottomPercent:F

    iget-boolean v8, v11, Lcom/miui/gallery/editor/photo/core/imports/text/dialog/DialogManager$LocalDialog;->mIsCorner:Z

    iget v9, v11, Lcom/miui/gallery/editor/photo/core/imports/text/dialog/DialogManager$LocalDialog;->mCornerPosition:I

    .line 20
    invoke-virtual {v11}, Lcom/miui/gallery/editor/photo/core/imports/text/dialog/DialogManager$LocalDialog;->name()Ljava/lang/String;

    move-result-object v10

    invoke-direct/range {v0 .. v10}, Lcom/miui/gallery/editor/photo/core/imports/text/dialog/LocalDialogModel;-><init>(IIIFFFFZILjava/lang/String;)V

    .line 21
    .local v0, "dialogModel":Lcom/miui/gallery/editor/photo/core/imports/text/dialog/LocalDialogModel;
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/dialog/DialogManager;->mDialogModelList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 18
    add-int/lit8 v1, v12, 0x1

    move v12, v1

    goto :goto_0

    .line 23
    .end local v0    # "dialogModel":Lcom/miui/gallery/editor/photo/core/imports/text/dialog/LocalDialogModel;
    .end local v11    # "localDialog":Lcom/miui/gallery/editor/photo/core/imports/text/dialog/DialogManager$LocalDialog;
    :cond_0
    return-void
.end method


# virtual methods
.method public getDialogModelList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/editor/photo/core/imports/text/dialog/BaseDialogModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 69
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/dialog/DialogManager;->mDialogModelList:Ljava/util/List;

    return-object v0
.end method
