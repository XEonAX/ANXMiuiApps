.class Lcom/nexstreaming/kminternal/kinemaster/fonts/Font$b;
.super Ljava/lang/Object;
.source "Font.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nexstreaming/kminternal/kinemaster/fonts/Font;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# instance fields
.field final a:Ljava/lang/String;

.field final b:I


# direct methods
.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 255
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 256
    iput-object p1, p0, Lcom/nexstreaming/kminternal/kinemaster/fonts/Font$b;->a:Ljava/lang/String;

    .line 257
    iput p2, p0, Lcom/nexstreaming/kminternal/kinemaster/fonts/Font$b;->b:I

    .line 258
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILcom/nexstreaming/kminternal/kinemaster/fonts/Font$1;)V
    .locals 0

    .prologue
    .line 251
    invoke-direct {p0, p1, p2}, Lcom/nexstreaming/kminternal/kinemaster/fonts/Font$b;-><init>(Ljava/lang/String;I)V

    return-void
.end method
