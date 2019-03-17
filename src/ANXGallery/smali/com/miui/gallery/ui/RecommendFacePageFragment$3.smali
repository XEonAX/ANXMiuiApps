.class Lcom/miui/gallery/ui/RecommendFacePageFragment$3;
.super Lcom/miui/gallery/ui/RecommendFaceGroupAdapter;
.source "RecommendFacePageFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/ui/RecommendFacePageFragment;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/ui/RecommendFacePageFragment;


# direct methods
.method constructor <init>(Lcom/miui/gallery/ui/RecommendFacePageFragment;Lcom/miui/gallery/ui/BaseMediaFragment;Ljava/lang/String;Ljava/lang/Long;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/ui/RecommendFacePageFragment;
    .param p2, "fragment"    # Lcom/miui/gallery/ui/BaseMediaFragment;
    .param p3, "serverId"    # Ljava/lang/String;
    .param p4, "localId"    # Ljava/lang/Long;

    .prologue
    .line 113
    iput-object p1, p0, Lcom/miui/gallery/ui/RecommendFacePageFragment$3;->this$0:Lcom/miui/gallery/ui/RecommendFacePageFragment;

    invoke-direct {p0, p2, p3, p4}, Lcom/miui/gallery/ui/RecommendFaceGroupAdapter;-><init>(Lcom/miui/gallery/ui/BaseMediaFragment;Ljava/lang/String;Ljava/lang/Long;)V

    return-void
.end method


# virtual methods
.method public getColumnsCount()I
    .locals 1

    .prologue
    .line 121
    const/4 v0, 0x3

    return v0
.end method

.method protected getLayoutId()I
    .locals 1

    .prologue
    .line 126
    const v0, 0x7f040115

    return v0
.end method

.method public getRowsCount()I
    .locals 1

    .prologue
    .line 116
    const/4 v0, 0x4

    return v0
.end method
