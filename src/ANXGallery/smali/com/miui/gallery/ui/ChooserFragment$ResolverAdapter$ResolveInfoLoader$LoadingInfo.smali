.class Lcom/miui/gallery/ui/ChooserFragment$ResolverAdapter$ResolveInfoLoader$LoadingInfo;
.super Ljava/lang/Object;
.source "ChooserFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/ui/ChooserFragment$ResolverAdapter$ResolveInfoLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LoadingInfo"
.end annotation


# instance fields
.field final mIcon:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field final mLabel:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field

.field final mResolve:Landroid/content/pm/ResolveInfo;

.field final mUseCustomIcon:Z


# direct methods
.method public constructor <init>(Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/content/pm/ResolveInfo;Z)V
    .locals 1
    .param p1, "icon"    # Landroid/widget/ImageView;
    .param p2, "label"    # Landroid/widget/TextView;
    .param p3, "info"    # Landroid/content/pm/ResolveInfo;
    .param p4, "useCustomIcon"    # Z

    .prologue
    .line 633
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 634
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/gallery/ui/ChooserFragment$ResolverAdapter$ResolveInfoLoader$LoadingInfo;->mIcon:Ljava/lang/ref/WeakReference;

    .line 635
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/gallery/ui/ChooserFragment$ResolverAdapter$ResolveInfoLoader$LoadingInfo;->mLabel:Ljava/lang/ref/WeakReference;

    .line 636
    iput-object p3, p0, Lcom/miui/gallery/ui/ChooserFragment$ResolverAdapter$ResolveInfoLoader$LoadingInfo;->mResolve:Landroid/content/pm/ResolveInfo;

    .line 637
    iput-boolean p4, p0, Lcom/miui/gallery/ui/ChooserFragment$ResolverAdapter$ResolveInfoLoader$LoadingInfo;->mUseCustomIcon:Z

    .line 638
    return-void
.end method


# virtual methods
.method public getIconView()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 646
    iget-object v0, p0, Lcom/miui/gallery/ui/ChooserFragment$ResolverAdapter$ResolveInfoLoader$LoadingInfo;->mIcon:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/ui/ChooserFragment$ResolverAdapter$ResolveInfoLoader$LoadingInfo;->mIcon:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getLabelView()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 650
    iget-object v0, p0, Lcom/miui/gallery/ui/ChooserFragment$ResolverAdapter$ResolveInfoLoader$LoadingInfo;->mLabel:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/ui/ChooserFragment$ResolverAdapter$ResolveInfoLoader$LoadingInfo;->mLabel:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getViewId()I
    .locals 2

    .prologue
    .line 641
    invoke-virtual {p0}, Lcom/miui/gallery/ui/ChooserFragment$ResolverAdapter$ResolveInfoLoader$LoadingInfo;->getIconView()Landroid/widget/ImageView;

    move-result-object v0

    .line 642
    .local v0, "icon":Landroid/widget/ImageView;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
