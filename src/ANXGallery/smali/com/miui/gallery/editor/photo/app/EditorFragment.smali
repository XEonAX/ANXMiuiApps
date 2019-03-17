.class public Lcom/miui/gallery/editor/photo/app/EditorFragment;
.super Landroid/app/Fragment;
.source "EditorFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onAttach(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 12
    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 13
    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/app/EditorFragment;->getParentFragment()Landroid/app/Fragment;

    move-result-object v0

    .line 14
    .local v0, "parent":Landroid/app/Fragment;
    instance-of v1, v0, Lcom/miui/gallery/editor/photo/utils/Attachable;

    if-eqz v1, :cond_0

    .line 15
    check-cast v0, Lcom/miui/gallery/editor/photo/utils/Attachable;

    .end local v0    # "parent":Landroid/app/Fragment;
    invoke-interface {v0, p0}, Lcom/miui/gallery/editor/photo/utils/Attachable;->attach(Landroid/app/Fragment;)V

    .line 17
    :cond_0
    return-void
.end method
