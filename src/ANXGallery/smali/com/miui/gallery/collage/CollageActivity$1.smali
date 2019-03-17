.class Lcom/miui/gallery/collage/CollageActivity$1;
.super Ljava/lang/Object;
.source "CollageActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/collage/CollageActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/collage/CollageActivity;


# direct methods
.method constructor <init>(Lcom/miui/gallery/collage/CollageActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/collage/CollageActivity;

    .prologue
    .line 133
    iput-object p1, p0, Lcom/miui/gallery/collage/CollageActivity$1;->this$0:Lcom/miui/gallery/collage/CollageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 136
    if-eqz p2, :cond_0

    .line 137
    iget-object v0, p0, Lcom/miui/gallery/collage/CollageActivity$1;->this$0:Lcom/miui/gallery/collage/CollageActivity;

    invoke-static {v0, p1}, Lcom/miui/gallery/collage/CollageActivity;->access$000(Lcom/miui/gallery/collage/CollageActivity;Landroid/view/View;)V

    .line 139
    :cond_0
    return-void
.end method
