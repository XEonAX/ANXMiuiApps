.class Lcom/nexstreaming/checkcaps/a$b;
.super Ljava/lang/Thread;
.source "Checker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nexstreaming/checkcaps/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# instance fields
.field private a:Lcom/nexstreaming/checkcaps/a;

.field private b:Ljava/util/AbstractMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/AbstractMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/nexstreaming/checkcaps/a;Ljava/util/AbstractMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nexstreaming/checkcaps/a;",
            "Ljava/util/AbstractMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 158
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 155
    iput-object v0, p0, Lcom/nexstreaming/checkcaps/a$b;->a:Lcom/nexstreaming/checkcaps/a;

    .line 156
    iput-object v0, p0, Lcom/nexstreaming/checkcaps/a$b;->b:Ljava/util/AbstractMap;

    .line 159
    iput-object p1, p0, Lcom/nexstreaming/checkcaps/a$b;->a:Lcom/nexstreaming/checkcaps/a;

    .line 160
    iput-object p2, p0, Lcom/nexstreaming/checkcaps/a$b;->b:Ljava/util/AbstractMap;

    .line 161
    return-void
.end method

.method public static a(Lcom/nexstreaming/checkcaps/a;Ljava/util/AbstractMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nexstreaming/checkcaps/a;",
            "Ljava/util/AbstractMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 190
    new-instance v0, Lcom/nexstreaming/checkcaps/a$b;

    invoke-direct {v0, p0, p1}, Lcom/nexstreaming/checkcaps/a$b;-><init>(Lcom/nexstreaming/checkcaps/a;Ljava/util/AbstractMap;)V

    .line 191
    invoke-virtual {v0}, Lcom/nexstreaming/checkcaps/a$b;->start()V

    .line 194
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 166
    iget-object v0, p0, Lcom/nexstreaming/checkcaps/a$b;->b:Ljava/util/AbstractMap;

    if-nez v0, :cond_0

    .line 187
    :goto_0
    return-void

    .line 169
    :cond_0
    iget-object v0, p0, Lcom/nexstreaming/checkcaps/a$b;->b:Ljava/util/AbstractMap;

    const-string v1, "command"

    invoke-virtual {v0, v1}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 171
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 174
    :pswitch_0
    iget-object v0, p0, Lcom/nexstreaming/checkcaps/a$b;->b:Ljava/util/AbstractMap;

    const-string/jumbo v1, "width"

    invoke-virtual {v0, v1}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 175
    iget-object v0, p0, Lcom/nexstreaming/checkcaps/a$b;->b:Ljava/util/AbstractMap;

    const-string v2, "height"

    invoke-virtual {v0, v2}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 176
    iget-object v2, p0, Lcom/nexstreaming/checkcaps/a$b;->a:Lcom/nexstreaming/checkcaps/a;

    invoke-static {v2, v1, v0}, Lcom/nexstreaming/checkcaps/a;->a(Lcom/nexstreaming/checkcaps/a;II)I

    move-result v0

    .line 177
    iget-object v1, p0, Lcom/nexstreaming/checkcaps/a$b;->a:Lcom/nexstreaming/checkcaps/a;

    invoke-static {v1}, Lcom/nexstreaming/checkcaps/a;->a(Lcom/nexstreaming/checkcaps/a;)Lcom/nexstreaming/checkcaps/a$a;

    move-result-object v1

    iget-object v2, p0, Lcom/nexstreaming/checkcaps/a$b;->a:Lcom/nexstreaming/checkcaps/a;

    invoke-interface {v1, v2, v0}, Lcom/nexstreaming/checkcaps/a$a;->a(Lcom/nexstreaming/checkcaps/a;I)V

    goto :goto_0

    .line 171
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
