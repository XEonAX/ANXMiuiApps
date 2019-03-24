.class Lmiui/telephony/phonenumber/ChineseTelocationConverter$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lmiui/telephony/phonenumber/ChineseTelocationConverter$DatFileRawReadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/telephony/phonenumber/ChineseTelocationConverter;->cU()V
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

    .line 310
    iput-object p1, p0, Lmiui/telephony/phonenumber/ChineseTelocationConverter$2;->FG:Lmiui/telephony/phonenumber/ChineseTelocationConverter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b([Ljava/lang/String;)V
    .locals 2

    .line 313
    iget-object v0, p0, Lmiui/telephony/phonenumber/ChineseTelocationConverter$2;->FG:Lmiui/telephony/phonenumber/ChineseTelocationConverter;

    invoke-static {v0}, Lmiui/telephony/phonenumber/ChineseTelocationConverter;->b(Lmiui/telephony/phonenumber/ChineseTelocationConverter;)Ljava/util/HashSet;

    move-result-object v0

    const/4 v1, 0x0

    aget-object p1, p1, v1

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 314
    return-void
.end method
