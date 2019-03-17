.class final Lcom/miui/gallery/compat/app/ActivityCompat$1;
.super Landroid/app/SharedElementCallback;
.source "ActivityCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/compat/app/ActivityCompat;->setEnterSharedElementCallback(Landroid/app/Activity;Lcom/miui/gallery/compat/app/ActivityCompat$SharedElementCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$callback:Lcom/miui/gallery/compat/app/ActivityCompat$SharedElementCallback;


# direct methods
.method constructor <init>(Lcom/miui/gallery/compat/app/ActivityCompat$SharedElementCallback;)V
    .locals 0

    .prologue
    .line 41
    iput-object p1, p0, Lcom/miui/gallery/compat/app/ActivityCompat$1;->val$callback:Lcom/miui/gallery/compat/app/ActivityCompat$SharedElementCallback;

    invoke-direct {p0}, Landroid/app/SharedElementCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onSharedElementStart(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 44
    .local p1, "sharedElementNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p2, "sharedElements":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    .local p3, "sharedElementSnapshots":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    iget-object v0, p0, Lcom/miui/gallery/compat/app/ActivityCompat$1;->val$callback:Lcom/miui/gallery/compat/app/ActivityCompat$SharedElementCallback;

    if-eqz v0, :cond_0

    .line 45
    iget-object v0, p0, Lcom/miui/gallery/compat/app/ActivityCompat$1;->val$callback:Lcom/miui/gallery/compat/app/ActivityCompat$SharedElementCallback;

    invoke-interface {v0}, Lcom/miui/gallery/compat/app/ActivityCompat$SharedElementCallback;->onSharedElementStart()V

    .line 47
    :cond_0
    return-void
.end method
