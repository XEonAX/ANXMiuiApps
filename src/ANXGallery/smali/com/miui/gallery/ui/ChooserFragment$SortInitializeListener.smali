.class Lcom/miui/gallery/ui/ChooserFragment$SortInitializeListener;
.super Ljava/lang/Object;
.source "ChooserFragment.java"

# interfaces
.implements Lcom/miui/gallery/util/ShareComponentSorter$OnInitializedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/ui/ChooserFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SortInitializeListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/ui/ChooserFragment;


# direct methods
.method private constructor <init>(Lcom/miui/gallery/ui/ChooserFragment;)V
    .locals 0

    .prologue
    .line 813
    iput-object p1, p0, Lcom/miui/gallery/ui/ChooserFragment$SortInitializeListener;->this$0:Lcom/miui/gallery/ui/ChooserFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/gallery/ui/ChooserFragment;Lcom/miui/gallery/ui/ChooserFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/miui/gallery/ui/ChooserFragment;
    .param p2, "x1"    # Lcom/miui/gallery/ui/ChooserFragment$1;

    .prologue
    .line 813
    invoke-direct {p0, p1}, Lcom/miui/gallery/ui/ChooserFragment$SortInitializeListener;-><init>(Lcom/miui/gallery/ui/ChooserFragment;)V

    return-void
.end method


# virtual methods
.method public onInitialized()V
    .locals 2

    .prologue
    .line 816
    const-string v0, "ChooserFragment"

    const-string/jumbo v1, "sorter initialized, rebuild cells"

    invoke-static {v0, v1}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 818
    iget-object v0, p0, Lcom/miui/gallery/ui/ChooserFragment$SortInitializeListener;->this$0:Lcom/miui/gallery/ui/ChooserFragment;

    invoke-static {v0}, Lcom/miui/gallery/ui/ChooserFragment;->access$900(Lcom/miui/gallery/ui/ChooserFragment;)Lcom/miui/gallery/ui/ChooserFragment$ResolverAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 819
    iget-object v0, p0, Lcom/miui/gallery/ui/ChooserFragment$SortInitializeListener;->this$0:Lcom/miui/gallery/ui/ChooserFragment;

    invoke-static {v0}, Lcom/miui/gallery/ui/ChooserFragment;->access$900(Lcom/miui/gallery/ui/ChooserFragment;)Lcom/miui/gallery/ui/ChooserFragment$ResolverAdapter;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/gallery/ui/ChooserFragment$ResolverAdapter;->access$1000(Lcom/miui/gallery/ui/ChooserFragment$ResolverAdapter;)V

    .line 820
    iget-object v0, p0, Lcom/miui/gallery/ui/ChooserFragment$SortInitializeListener;->this$0:Lcom/miui/gallery/ui/ChooserFragment;

    invoke-static {v0}, Lcom/miui/gallery/ui/ChooserFragment;->access$900(Lcom/miui/gallery/ui/ChooserFragment;)Lcom/miui/gallery/ui/ChooserFragment$ResolverAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/gallery/ui/ChooserFragment$ResolverAdapter;->notifyDataSetChanged()V

    .line 822
    :cond_0
    return-void
.end method
