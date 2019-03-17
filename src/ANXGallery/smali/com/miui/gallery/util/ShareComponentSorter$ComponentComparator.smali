.class Lcom/miui/gallery/util/ShareComponentSorter$ComponentComparator;
.super Ljava/lang/Object;
.source "ShareComponentSorter.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/util/ShareComponentSorter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ComponentComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Landroid/content/pm/ResolveInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private mPriority:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/miui/gallery/util/ShareComponentSorter$Tag;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mTemp:Lcom/miui/gallery/util/ShareComponentSorter$Tag;


# direct methods
.method public constructor <init>(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lcom/miui/gallery/util/ShareComponentSorter$Tag;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 448
    .local p1, "priority":Ljava/util/Map;, "Ljava/util/Map<Lcom/miui/gallery/util/ShareComponentSorter$Tag;Ljava/lang/Integer;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 446
    new-instance v0, Lcom/miui/gallery/util/ShareComponentSorter$Tag;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/miui/gallery/util/ShareComponentSorter$Tag;-><init>(Lcom/miui/gallery/util/ShareComponentSorter$1;)V

    iput-object v0, p0, Lcom/miui/gallery/util/ShareComponentSorter$ComponentComparator;->mTemp:Lcom/miui/gallery/util/ShareComponentSorter$Tag;

    .line 449
    iput-object p1, p0, Lcom/miui/gallery/util/ShareComponentSorter$ComponentComparator;->mPriority:Ljava/util/Map;

    .line 450
    return-void
.end method


# virtual methods
.method public compare(Landroid/content/pm/ResolveInfo;Landroid/content/pm/ResolveInfo;)I
    .locals 5
    .param p1, "lhs"    # Landroid/content/pm/ResolveInfo;
    .param p2, "rhs"    # Landroid/content/pm/ResolveInfo;

    .prologue
    const/4 v3, 0x0

    .line 454
    iget-object v2, p0, Lcom/miui/gallery/util/ShareComponentSorter$ComponentComparator;->mTemp:Lcom/miui/gallery/util/ShareComponentSorter$Tag;

    iget-object v4, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-static {v2, v4}, Lcom/miui/gallery/util/ShareComponentSorter$Tag;->access$1002(Lcom/miui/gallery/util/ShareComponentSorter$Tag;Ljava/lang/String;)Ljava/lang/String;

    .line 455
    iget-object v2, p0, Lcom/miui/gallery/util/ShareComponentSorter$ComponentComparator;->mTemp:Lcom/miui/gallery/util/ShareComponentSorter$Tag;

    iget-object v4, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-static {v2, v4}, Lcom/miui/gallery/util/ShareComponentSorter$Tag;->access$202(Lcom/miui/gallery/util/ShareComponentSorter$Tag;Ljava/lang/String;)Ljava/lang/String;

    .line 456
    iget-object v2, p0, Lcom/miui/gallery/util/ShareComponentSorter$ComponentComparator;->mPriority:Ljava/util/Map;

    iget-object v4, p0, Lcom/miui/gallery/util/ShareComponentSorter$ComponentComparator;->mTemp:Lcom/miui/gallery/util/ShareComponentSorter$Tag;

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-static {v2, v3}, Lcom/miui/gallery/util/Numbers;->unbox(Ljava/lang/Integer;I)I

    move-result v0

    .line 458
    .local v0, "lPrior":I
    iget-object v2, p0, Lcom/miui/gallery/util/ShareComponentSorter$ComponentComparator;->mTemp:Lcom/miui/gallery/util/ShareComponentSorter$Tag;

    iget-object v4, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-static {v2, v4}, Lcom/miui/gallery/util/ShareComponentSorter$Tag;->access$1002(Lcom/miui/gallery/util/ShareComponentSorter$Tag;Ljava/lang/String;)Ljava/lang/String;

    .line 459
    iget-object v2, p0, Lcom/miui/gallery/util/ShareComponentSorter$ComponentComparator;->mTemp:Lcom/miui/gallery/util/ShareComponentSorter$Tag;

    iget-object v4, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-static {v2, v4}, Lcom/miui/gallery/util/ShareComponentSorter$Tag;->access$202(Lcom/miui/gallery/util/ShareComponentSorter$Tag;Ljava/lang/String;)Ljava/lang/String;

    .line 460
    iget-object v2, p0, Lcom/miui/gallery/util/ShareComponentSorter$ComponentComparator;->mPriority:Ljava/util/Map;

    iget-object v4, p0, Lcom/miui/gallery/util/ShareComponentSorter$ComponentComparator;->mTemp:Lcom/miui/gallery/util/ShareComponentSorter$Tag;

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-static {v2, v3}, Lcom/miui/gallery/util/Numbers;->unbox(Ljava/lang/Integer;I)I

    move-result v1

    .line 461
    .local v1, "rPrior":I
    if-le v0, v1, :cond_0

    const/4 v2, -0x1

    :goto_0
    return v2

    :cond_0
    if-ne v0, v1, :cond_1

    move v2, v3

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 444
    check-cast p1, Landroid/content/pm/ResolveInfo;

    check-cast p2, Landroid/content/pm/ResolveInfo;

    invoke-virtual {p0, p1, p2}, Lcom/miui/gallery/util/ShareComponentSorter$ComponentComparator;->compare(Landroid/content/pm/ResolveInfo;Landroid/content/pm/ResolveInfo;)I

    move-result v0

    return v0
.end method
