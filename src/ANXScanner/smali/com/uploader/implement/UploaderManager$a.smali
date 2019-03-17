.class Lcom/uploader/implement/UploaderManager$a;
.super Ljava/lang/Object;
.source "UploaderManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uploader/implement/UploaderManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field final a:Lcom/uploader/implement/UploaderManager;

.field final b:I

.field final c:[Ljava/lang/Object;


# direct methods
.method varargs constructor <init>(ILcom/uploader/implement/UploaderManager;[Ljava/lang/Object;)V
    .locals 0
    .param p1, "flag"    # I
    .param p2, "manager"    # Lcom/uploader/implement/UploaderManager;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "objects"    # [Ljava/lang/Object;

    .prologue
    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    iput p1, p0, Lcom/uploader/implement/UploaderManager$a;->b:I

    .line 110
    iput-object p2, p0, Lcom/uploader/implement/UploaderManager$a;->a:Lcom/uploader/implement/UploaderManager;

    .line 111
    iput-object p3, p0, Lcom/uploader/implement/UploaderManager$a;->c:[Ljava/lang/Object;

    .line 112
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 116
    iget v0, p0, Lcom/uploader/implement/UploaderManager$a;->b:I

    packed-switch v0, :pswitch_data_0

    .line 135
    :goto_0
    return-void

    .line 118
    :pswitch_0
    iget-object v3, p0, Lcom/uploader/implement/UploaderManager$a;->a:Lcom/uploader/implement/UploaderManager;

    iget-object v0, p0, Lcom/uploader/implement/UploaderManager$a;->c:[Ljava/lang/Object;

    aget-object v0, v0, v2

    check-cast v0, Lcom/uploader/export/IUploaderTask;

    iget-object v1, p0, Lcom/uploader/implement/UploaderManager$a;->c:[Ljava/lang/Object;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    check-cast v1, Lcom/uploader/export/ITaskListener;

    iget-object v2, p0, Lcom/uploader/implement/UploaderManager$a;->c:[Ljava/lang/Object;

    const/4 v4, 0x2

    aget-object v2, v2, v4

    check-cast v2, Landroid/os/Handler;

    invoke-virtual {v3, v0, v1, v2}, Lcom/uploader/implement/UploaderManager;->a(Lcom/uploader/export/IUploaderTask;Lcom/uploader/export/ITaskListener;Landroid/os/Handler;)V

    goto :goto_0

    .line 121
    :pswitch_1
    iget-object v1, p0, Lcom/uploader/implement/UploaderManager$a;->a:Lcom/uploader/implement/UploaderManager;

    iget-object v0, p0, Lcom/uploader/implement/UploaderManager$a;->c:[Ljava/lang/Object;

    aget-object v0, v0, v2

    check-cast v0, Lcom/uploader/export/IUploaderTask;

    invoke-virtual {v1, v0}, Lcom/uploader/implement/UploaderManager;->a(Lcom/uploader/export/IUploaderTask;)V

    goto :goto_0

    .line 124
    :pswitch_2
    iget-object v0, p0, Lcom/uploader/implement/UploaderManager$a;->a:Lcom/uploader/implement/UploaderManager;

    invoke-virtual {v0}, Lcom/uploader/implement/UploaderManager;->a()V

    goto :goto_0

    .line 127
    :pswitch_3
    iget-object v1, p0, Lcom/uploader/implement/UploaderManager$a;->a:Lcom/uploader/implement/UploaderManager;

    iget-object v0, p0, Lcom/uploader/implement/UploaderManager$a;->c:[Ljava/lang/Object;

    aget-object v0, v0, v2

    check-cast v0, Lcom/uploader/implement/a/g;

    invoke-virtual {v1, v0}, Lcom/uploader/implement/UploaderManager;->b(Lcom/uploader/implement/a/g;)V

    goto :goto_0

    .line 130
    :pswitch_4
    iget-object v0, p0, Lcom/uploader/implement/UploaderManager$a;->a:Lcom/uploader/implement/UploaderManager;

    invoke-static {v0}, Lcom/uploader/implement/UploaderManager;->a(Lcom/uploader/implement/UploaderManager;)V

    goto :goto_0

    .line 116
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
