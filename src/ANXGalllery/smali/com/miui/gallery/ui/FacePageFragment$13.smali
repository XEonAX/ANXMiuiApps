.class Lcom/miui/gallery/ui/FacePageFragment$13;
.super Lcom/miui/gallery/ui/RecommendFaceGroupAdapter;
.source "FacePageFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/ui/FacePageFragment;->addRecommendGroupHeader()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/ui/FacePageFragment;


# direct methods
.method constructor <init>(Lcom/miui/gallery/ui/FacePageFragment;Lcom/miui/gallery/ui/BaseMediaFragment;Ljava/lang/String;Ljava/lang/Long;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/ui/FacePageFragment;
    .param p2, "fragment"    # Lcom/miui/gallery/ui/BaseMediaFragment;
    .param p3, "serverId"    # Ljava/lang/String;
    .param p4, "localId"    # Ljava/lang/Long;

    .prologue
    .line 579
    iput-object p1, p0, Lcom/miui/gallery/ui/FacePageFragment$13;->this$0:Lcom/miui/gallery/ui/FacePageFragment;

    invoke-direct {p0, p2, p3, p4}, Lcom/miui/gallery/ui/RecommendFaceGroupAdapter;-><init>(Lcom/miui/gallery/ui/BaseMediaFragment;Ljava/lang/String;Ljava/lang/Long;)V

    return-void
.end method


# virtual methods
.method public getColumnsCount()I
    .locals 1

    .prologue
    .line 587
    const/4 v0, 0x4

    return v0
.end method

.method protected getLayoutId()I
    .locals 1

    .prologue
    .line 592
    const v0, 0x7f040116

    return v0
.end method

.method public getRowsCount()I
    .locals 1

    .prologue
    .line 582
    const/4 v0, 0x1

    return v0
.end method
