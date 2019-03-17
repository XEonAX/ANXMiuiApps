.class Lcom/miui/gallery/ui/ChooserFragment$ResolverAdapter$ResolveInfoLoader$LoadResult;
.super Ljava/lang/Object;
.source "ChooserFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/ui/ChooserFragment$ResolverAdapter$ResolveInfoLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LoadResult"
.end annotation


# instance fields
.field final mIcon:Landroid/graphics/drawable/Drawable;

.field final mIsCustomIcon:Z

.field final mLabel:Ljava/lang/CharSequence;

.field mLoadingInfo:Lcom/miui/gallery/ui/ChooserFragment$ResolverAdapter$ResolveInfoLoader$LoadingInfo;


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Z)V
    .locals 0
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;
    .param p2, "label"    # Ljava/lang/CharSequence;
    .param p3, "isCustomIcon"    # Z

    .prologue
    .line 611
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 612
    iput-object p1, p0, Lcom/miui/gallery/ui/ChooserFragment$ResolverAdapter$ResolveInfoLoader$LoadResult;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 613
    iput-object p2, p0, Lcom/miui/gallery/ui/ChooserFragment$ResolverAdapter$ResolveInfoLoader$LoadResult;->mLabel:Ljava/lang/CharSequence;

    .line 614
    iput-boolean p3, p0, Lcom/miui/gallery/ui/ChooserFragment$ResolverAdapter$ResolveInfoLoader$LoadResult;->mIsCustomIcon:Z

    .line 615
    return-void
.end method


# virtual methods
.method setLoadingInfo(Lcom/miui/gallery/ui/ChooserFragment$ResolverAdapter$ResolveInfoLoader$LoadingInfo;)Lcom/miui/gallery/ui/ChooserFragment$ResolverAdapter$ResolveInfoLoader$LoadResult;
    .locals 0
    .param p1, "info"    # Lcom/miui/gallery/ui/ChooserFragment$ResolverAdapter$ResolveInfoLoader$LoadingInfo;

    .prologue
    .line 618
    iput-object p1, p0, Lcom/miui/gallery/ui/ChooserFragment$ResolverAdapter$ResolveInfoLoader$LoadResult;->mLoadingInfo:Lcom/miui/gallery/ui/ChooserFragment$ResolverAdapter$ResolveInfoLoader$LoadingInfo;

    .line 619
    return-object p0
.end method
