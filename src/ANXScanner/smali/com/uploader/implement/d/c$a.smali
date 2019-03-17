.class Lcom/uploader/implement/d/c$a;
.super Ljava/lang/Object;
.source "UploaderSession.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uploader/implement/d/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field final a:I

.field final b:Lcom/uploader/implement/d/c;

.field final c:[Ljava/lang/Object;


# direct methods
.method varargs constructor <init>(ILcom/uploader/implement/d/c;[Ljava/lang/Object;)V
    .locals 0
    .param p1, "flag"    # I
    .param p2, "session"    # Lcom/uploader/implement/d/c;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "objects"    # [Ljava/lang/Object;

    .prologue
    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 144
    iput p1, p0, Lcom/uploader/implement/d/c$a;->a:I

    .line 145
    iput-object p2, p0, Lcom/uploader/implement/d/c$a;->b:Lcom/uploader/implement/d/c;

    .line 146
    iput-object p3, p0, Lcom/uploader/implement/d/c$a;->c:[Ljava/lang/Object;

    .line 147
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 151
    iget v0, p0, Lcom/uploader/implement/d/c$a;->a:I

    packed-switch v0, :pswitch_data_0

    .line 187
    :goto_0
    return-void

    .line 153
    :pswitch_0
    iget-object v1, p0, Lcom/uploader/implement/d/c$a;->b:Lcom/uploader/implement/d/c;

    iget-object v0, p0, Lcom/uploader/implement/d/c$a;->c:[Ljava/lang/Object;

    aget-object v0, v0, v4

    check-cast v0, Lcom/uploader/implement/b/e;

    invoke-virtual {v1, v0}, Lcom/uploader/implement/d/c;->c(Lcom/uploader/implement/b/e;)V

    goto :goto_0

    .line 157
    :pswitch_1
    iget-object v1, p0, Lcom/uploader/implement/d/c$a;->b:Lcom/uploader/implement/d/c;

    iget-object v0, p0, Lcom/uploader/implement/d/c$a;->c:[Ljava/lang/Object;

    aget-object v0, v0, v4

    check-cast v0, Lcom/uploader/implement/b/e;

    invoke-virtual {v1, v0}, Lcom/uploader/implement/d/c;->d(Lcom/uploader/implement/b/e;)V

    goto :goto_0

    .line 161
    :pswitch_2
    iget-object v2, p0, Lcom/uploader/implement/d/c$a;->b:Lcom/uploader/implement/d/c;

    iget-object v0, p0, Lcom/uploader/implement/d/c$a;->c:[Ljava/lang/Object;

    aget-object v0, v0, v4

    check-cast v0, Lcom/uploader/implement/b/e;

    iget-object v1, p0, Lcom/uploader/implement/d/c$a;->c:[Ljava/lang/Object;

    aget-object v1, v1, v5

    check-cast v1, Lcom/uploader/implement/c/a;

    invoke-virtual {v2, v0, v1}, Lcom/uploader/implement/d/c;->b(Lcom/uploader/implement/b/e;Lcom/uploader/implement/c/a;)V

    goto :goto_0

    .line 165
    :pswitch_3
    iget-object v2, p0, Lcom/uploader/implement/d/c$a;->b:Lcom/uploader/implement/d/c;

    iget-object v0, p0, Lcom/uploader/implement/d/c$a;->c:[Ljava/lang/Object;

    aget-object v0, v0, v4

    check-cast v0, Lcom/uploader/implement/b/e;

    iget-object v1, p0, Lcom/uploader/implement/d/c$a;->c:[Ljava/lang/Object;

    aget-object v1, v1, v5

    check-cast v1, Lcom/uploader/implement/b/f;

    invoke-virtual {v2, v0, v1}, Lcom/uploader/implement/d/c;->b(Lcom/uploader/implement/b/e;Lcom/uploader/implement/b/f;)V

    goto :goto_0

    .line 169
    :pswitch_4
    iget-object v2, p0, Lcom/uploader/implement/d/c$a;->b:Lcom/uploader/implement/d/c;

    iget-object v0, p0, Lcom/uploader/implement/d/c$a;->c:[Ljava/lang/Object;

    aget-object v0, v0, v4

    check-cast v0, Lcom/uploader/implement/b/e;

    iget-object v1, p0, Lcom/uploader/implement/d/c$a;->c:[Ljava/lang/Object;

    aget-object v1, v1, v5

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v2, v0, v1, v4}, Lcom/uploader/implement/d/c;->a(Lcom/uploader/implement/b/e;IZ)V

    goto :goto_0

    .line 173
    :pswitch_5
    iget-object v2, p0, Lcom/uploader/implement/d/c$a;->b:Lcom/uploader/implement/d/c;

    iget-object v0, p0, Lcom/uploader/implement/d/c$a;->c:[Ljava/lang/Object;

    aget-object v0, v0, v4

    check-cast v0, Lcom/uploader/implement/b/e;

    iget-object v1, p0, Lcom/uploader/implement/d/c$a;->c:[Ljava/lang/Object;

    aget-object v1, v1, v5

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v2, v0, v1, v5}, Lcom/uploader/implement/d/c;->a(Lcom/uploader/implement/b/e;IZ)V

    goto :goto_0

    .line 177
    :pswitch_6
    iget-object v3, p0, Lcom/uploader/implement/d/c$a;->b:Lcom/uploader/implement/d/c;

    iget-object v0, p0, Lcom/uploader/implement/d/c$a;->c:[Ljava/lang/Object;

    aget-object v0, v0, v4

    check-cast v0, Lcom/uploader/implement/d/b;

    iget-object v1, p0, Lcom/uploader/implement/d/c$a;->c:[Ljava/lang/Object;

    aget-object v1, v1, v5

    check-cast v1, Lcom/uploader/implement/a/e;

    iget-object v2, p0, Lcom/uploader/implement/d/c$a;->c:[Ljava/lang/Object;

    const/4 v4, 0x2

    aget-object v2, v2, v4

    check-cast v2, Lcom/uploader/implement/b/e;

    invoke-virtual {v3, v0, v1, v2}, Lcom/uploader/implement/d/c;->b(Lcom/uploader/implement/d/b;Lcom/uploader/implement/a/e;Lcom/uploader/implement/b/e;)V

    goto/16 :goto_0

    .line 181
    :pswitch_7
    iget-object v1, p0, Lcom/uploader/implement/d/c$a;->b:Lcom/uploader/implement/d/c;

    iget-object v0, p0, Lcom/uploader/implement/d/c$a;->c:[Ljava/lang/Object;

    aget-object v0, v0, v4

    check-cast v0, Lcom/uploader/implement/b/e;

    invoke-virtual {v1, v0}, Lcom/uploader/implement/d/c;->b(Lcom/uploader/implement/b/e;)V

    goto/16 :goto_0

    .line 151
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method
