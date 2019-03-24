.class Lmiui/content/res/IconCustomizer$1;
.super Ljava/lang/Object;
.source "IconCustomizer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/content/res/IconCustomizer;->prepareCustomizedIcons(Landroid/content/Context;Lmiui/content/res/IconCustomizer$CustomizedIconsListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$info:Landroid/content/pm/ResolveInfo;

.field final synthetic val$pm:Landroid/content/pm/PackageManager;


# direct methods
.method constructor <init>(Landroid/content/pm/ResolveInfo;Landroid/content/pm/PackageManager;)V
    .locals 0

    .line 415
    iput-object p1, p0, Lmiui/content/res/IconCustomizer$1;->val$info:Landroid/content/pm/ResolveInfo;

    iput-object p2, p0, Lmiui/content/res/IconCustomizer$1;->val$pm:Landroid/content/pm/PackageManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 417
    iget-object v0, p0, Lmiui/content/res/IconCustomizer$1;->val$info:Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, p0, Lmiui/content/res/IconCustomizer$1;->val$pm:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v1}, Landroid/content/pm/ActivityInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    .line 418
    return-void
.end method
