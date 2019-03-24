.class Lmiui/telephony/phonenumber/ChineseTelocationConverter$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lmiui/telephony/phonenumber/ChineseTelocationConverter$DatFileRawReadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/telephony/phonenumber/ChineseTelocationConverter;->cV()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic FG:Lmiui/telephony/phonenumber/ChineseTelocationConverter;


# direct methods
.method constructor <init>(Lmiui/telephony/phonenumber/ChineseTelocationConverter;)V
    .locals 0

    .line 319
    iput-object p1, p0, Lmiui/telephony/phonenumber/ChineseTelocationConverter$3;->FG:Lmiui/telephony/phonenumber/ChineseTelocationConverter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b([Ljava/lang/String;)V
    .locals 1

    .line 322
    nop

    .line 324
    const/4 v0, 0x0

    :try_start_0
    aget-object p1, p1, v0

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 327
    goto :goto_0

    .line 325
    :catch_0
    move-exception p1

    .line 328
    move p1, v0

    :goto_0
    if-eqz p1, :cond_0

    .line 329
    iget-object v0, p0, Lmiui/telephony/phonenumber/ChineseTelocationConverter$3;->FG:Lmiui/telephony/phonenumber/ChineseTelocationConverter;

    invoke-static {v0}, Lmiui/telephony/phonenumber/ChineseTelocationConverter;->c(Lmiui/telephony/phonenumber/ChineseTelocationConverter;)Ljava/util/HashSet;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 331
    :cond_0
    return-void
.end method
