.class Lmiui/telephony/phonenumber/ChineseTelocationConverter$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lmiui/telephony/phonenumber/ChineseTelocationConverter$DatFileRawReadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/telephony/phonenumber/ChineseTelocationConverter;->cT()V
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

    .line 301
    iput-object p1, p0, Lmiui/telephony/phonenumber/ChineseTelocationConverter$1;->FG:Lmiui/telephony/phonenumber/ChineseTelocationConverter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b([Ljava/lang/String;)V
    .locals 3

    .line 304
    iget-object v0, p0, Lmiui/telephony/phonenumber/ChineseTelocationConverter$1;->FG:Lmiui/telephony/phonenumber/ChineseTelocationConverter;

    invoke-static {v0}, Lmiui/telephony/phonenumber/ChineseTelocationConverter;->a(Lmiui/telephony/phonenumber/ChineseTelocationConverter;)Ljava/util/HashMap;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v1, p1, v1

    const/4 v2, 0x1

    aget-object p1, p1, v2

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 305
    return-void
.end method
