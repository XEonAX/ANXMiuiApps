.class Lmiui/widget/SlidingButton$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/widget/SlidingButton;->fO()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic aaE:Lmiui/widget/SlidingButton;

.field final synthetic aaF:Z


# direct methods
.method constructor <init>(Lmiui/widget/SlidingButton;Z)V
    .locals 0

    .line 369
    iput-object p1, p0, Lmiui/widget/SlidingButton$2;->aaE:Lmiui/widget/SlidingButton;

    iput-boolean p2, p0, Lmiui/widget/SlidingButton$2;->aaF:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 372
    iget-object v0, p0, Lmiui/widget/SlidingButton$2;->aaE:Lmiui/widget/SlidingButton;

    invoke-static {v0}, Lmiui/widget/SlidingButton;->d(Lmiui/widget/SlidingButton;)Landroid/widget/CompoundButton$OnCheckedChangeListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 373
    iget-object v0, p0, Lmiui/widget/SlidingButton$2;->aaE:Lmiui/widget/SlidingButton;

    invoke-static {v0}, Lmiui/widget/SlidingButton;->d(Lmiui/widget/SlidingButton;)Landroid/widget/CompoundButton$OnCheckedChangeListener;

    move-result-object v0

    iget-object v1, p0, Lmiui/widget/SlidingButton$2;->aaE:Lmiui/widget/SlidingButton;

    iget-boolean v2, p0, Lmiui/widget/SlidingButton$2;->aaF:Z

    invoke-interface {v0, v1, v2}, Landroid/widget/CompoundButton$OnCheckedChangeListener;->onCheckedChanged(Landroid/widget/CompoundButton;Z)V

    .line 375
    :cond_0
    return-void
.end method
