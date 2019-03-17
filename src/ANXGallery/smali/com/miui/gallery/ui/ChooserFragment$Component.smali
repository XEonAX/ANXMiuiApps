.class Lcom/miui/gallery/ui/ChooserFragment$Component;
.super Ljava/lang/Object;
.source "ChooserFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/ui/ChooserFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Component"
.end annotation


# instance fields
.field mClassName:Ljava/lang/String;

.field mHashCode:I

.field mPackageName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 878
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 879
    return-void
.end method

.method constructor <init>(Landroid/content/pm/ResolveInfo;)V
    .locals 2
    .param p1, "info"    # Landroid/content/pm/ResolveInfo;

    .prologue
    .line 881
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 882
    iget-object v0, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/miui/gallery/ui/ChooserFragment$Component;->init(Ljava/lang/String;Ljava/lang/String;)V

    .line 883
    return-void
.end method

.method private init(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "className"    # Ljava/lang/String;

    .prologue
    .line 895
    iput-object p1, p0, Lcom/miui/gallery/ui/ChooserFragment$Component;->mPackageName:Ljava/lang/String;

    .line 896
    iput-object p2, p0, Lcom/miui/gallery/ui/ChooserFragment$Component;->mClassName:Ljava/lang/String;

    .line 897
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/miui/gallery/ui/ChooserFragment$Component;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/ui/ChooserFragment$Component;->mClassName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iput v0, p0, Lcom/miui/gallery/ui/ChooserFragment$Component;->mHashCode:I

    .line 898
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 907
    instance-of v0, p1, Lcom/miui/gallery/ui/ChooserFragment$Component;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/miui/gallery/ui/ChooserFragment$Component;->mPackageName:Ljava/lang/String;

    move-object v0, p1

    check-cast v0, Lcom/miui/gallery/ui/ChooserFragment$Component;

    iget-object v0, v0, Lcom/miui/gallery/ui/ChooserFragment$Component;->mPackageName:Ljava/lang/String;

    .line 908
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/ui/ChooserFragment$Component;->mClassName:Ljava/lang/String;

    check-cast p1, Lcom/miui/gallery/ui/ChooserFragment$Component;

    .end local p1    # "o":Ljava/lang/Object;
    iget-object v1, p1, Lcom/miui/gallery/ui/ChooserFragment$Component;->mClassName:Ljava/lang/String;

    .line 909
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 902
    iget v0, p0, Lcom/miui/gallery/ui/ChooserFragment$Component;->mHashCode:I

    return v0
.end method

.method wrap(Landroid/content/pm/ResolveInfo;)Lcom/miui/gallery/ui/ChooserFragment$Component;
    .locals 2
    .param p1, "info"    # Landroid/content/pm/ResolveInfo;

    .prologue
    .line 890
    iget-object v0, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/miui/gallery/ui/ChooserFragment$Component;->init(Ljava/lang/String;Ljava/lang/String;)V

    .line 891
    return-object p0
.end method
