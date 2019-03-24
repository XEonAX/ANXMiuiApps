.class public Lmiui/text/ChinesePinyinConverter;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/text/ChinesePinyinConverter$BopomofoConvertor;,
        Lmiui/text/ChinesePinyinConverter$ChinesePinyinDictionary;,
        Lmiui/text/ChinesePinyinConverter$Token;
    }
.end annotation


# static fields
.field private static FP:Ljava/util/HashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static FQ:Ljava/util/HashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Character;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final FS:C = '\u4e00'

.field private static final FT:C = '\u9fa5'

.field private static final FU:C = '\u0900'

.field private static final FV:C = '\u097f'

.field private static final FW:C = '\u3007'

.field private static final TAG:Ljava/lang/String; = "ChinesePinyinConverter"

.field private static final s:Lmiui/util/SoftReferenceSingleton;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmiui/util/SoftReferenceSingleton<",
            "Lmiui/text/ChinesePinyinConverter;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private FX:Lmiui/text/ChinesePinyinConverter$ChinesePinyinDictionary;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 52
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lmiui/text/ChinesePinyinConverter;->FP:Ljava/util/HashMap;

    .line 53
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lmiui/text/ChinesePinyinConverter;->FQ:Ljava/util/HashMap;

    .line 64
    new-instance v0, Lmiui/text/ChinesePinyinConverter$1;

    invoke-direct {v0}, Lmiui/text/ChinesePinyinConverter$1;-><init>()V

    sput-object v0, Lmiui/text/ChinesePinyinConverter;->s:Lmiui/util/SoftReferenceSingleton;

    .line 135
    sget-object v0, Lmiui/text/ChinesePinyinConverter;->FP:Ljava/util/HashMap;

    const-string v1, "\u5355\u4e8e"

    const-string v2, "CHAN"

    const-string v3, "YU"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    sget-object v0, Lmiui/text/ChinesePinyinConverter;->FP:Ljava/util/HashMap;

    const-string v1, "\u957f\u5b59"

    const-string v2, "ZHANG"

    const-string v3, "SUN"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    sget-object v0, Lmiui/text/ChinesePinyinConverter;->FP:Ljava/util/HashMap;

    const-string v1, "\u5b50\u8f66"

    const-string v2, "ZI"

    const-string v3, "JU"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    sget-object v0, Lmiui/text/ChinesePinyinConverter;->FP:Ljava/util/HashMap;

    const-string v1, "\u4e07\u4fdf"

    const-string v2, "MO"

    const-string v3, "QI"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    sget-object v0, Lmiui/text/ChinesePinyinConverter;->FP:Ljava/util/HashMap;

    const-string v1, "\u6fb9\u53f0"

    const-string v2, "TAN"

    const-string v3, "TAI"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    sget-object v0, Lmiui/text/ChinesePinyinConverter;->FP:Ljava/util/HashMap;

    const-string v1, "\u5c09\u8fdf"

    const-string v2, "YU"

    const-string v3, "CHI"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    sget-object v0, Lmiui/text/ChinesePinyinConverter;->FQ:Ljava/util/HashMap;

    const/16 v1, 0x4e48

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "YAO"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    sget-object v0, Lmiui/text/ChinesePinyinConverter;->FQ:Ljava/util/HashMap;

    const/16 v1, 0x4e01

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "DING"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    sget-object v0, Lmiui/text/ChinesePinyinConverter;->FQ:Ljava/util/HashMap;

    const/16 v1, 0x4fde

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "YU"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    sget-object v0, Lmiui/text/ChinesePinyinConverter;->FQ:Ljava/util/HashMap;

    const v1, 0x8d3e

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "JIA"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    sget-object v0, Lmiui/text/ChinesePinyinConverter;->FQ:Ljava/util/HashMap;

    const/16 v1, 0x6c88

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "SHEN"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    sget-object v0, Lmiui/text/ChinesePinyinConverter;->FQ:Ljava/util/HashMap;

    const/16 v1, 0x535c

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "BU"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    sget-object v0, Lmiui/text/ChinesePinyinConverter;->FQ:Ljava/util/HashMap;

    const v1, 0x8584

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "BO"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    sget-object v0, Lmiui/text/ChinesePinyinConverter;->FQ:Ljava/util/HashMap;

    const/16 v1, 0x5b5b

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "BO"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    sget-object v0, Lmiui/text/ChinesePinyinConverter;->FQ:Ljava/util/HashMap;

    const v1, 0x8d32

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "BEN"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    sget-object v0, Lmiui/text/ChinesePinyinConverter;->FQ:Ljava/util/HashMap;

    const v1, 0x8d39

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "FEI"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    sget-object v0, Lmiui/text/ChinesePinyinConverter;->FQ:Ljava/util/HashMap;

    const/16 v1, 0x6cca

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "BAN"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    sget-object v0, Lmiui/text/ChinesePinyinConverter;->FQ:Ljava/util/HashMap;

    const v1, 0x8300

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "BI"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    sget-object v0, Lmiui/text/ChinesePinyinConverter;->FQ:Ljava/util/HashMap;

    const v1, 0x891a

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "CHU"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    sget-object v0, Lmiui/text/ChinesePinyinConverter;->FQ:Ljava/util/HashMap;

    const/16 v1, 0x4f20

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    const-string v3, "CHUAN"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    sget-object v0, Lmiui/text/ChinesePinyinConverter;->FQ:Ljava/util/HashMap;

    const/16 v2, 0x53c2

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    const-string v3, "CAN"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    sget-object v0, Lmiui/text/ChinesePinyinConverter;->FQ:Ljava/util/HashMap;

    const/16 v2, 0x5355

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    const-string v3, "SHAN"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    sget-object v0, Lmiui/text/ChinesePinyinConverter;->FQ:Ljava/util/HashMap;

    const v2, 0x90d7

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    const-string v3, "CHI"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    sget-object v0, Lmiui/text/ChinesePinyinConverter;->FQ:Ljava/util/HashMap;

    const v2, 0x9561

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    const-string v3, "CHAN"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    sget-object v0, Lmiui/text/ChinesePinyinConverter;->FQ:Ljava/util/HashMap;

    const/16 v2, 0x671d

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    const-string v3, "CHAO"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    sget-object v0, Lmiui/text/ChinesePinyinConverter;->FQ:Ljava/util/HashMap;

    const/16 v2, 0x555c

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    const-string v3, "CHUAI"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    sget-object v0, Lmiui/text/ChinesePinyinConverter;->FQ:Ljava/util/HashMap;

    const v2, 0x8870

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    const-string v3, "CUI"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    sget-object v0, Lmiui/text/ChinesePinyinConverter;->FQ:Ljava/util/HashMap;

    const/16 v2, 0x6668

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    const-string v3, "CHANG"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    sget-object v0, Lmiui/text/ChinesePinyinConverter;->FQ:Ljava/util/HashMap;

    const/16 v2, 0x4e11

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    const-string v3, "CHOU"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    sget-object v0, Lmiui/text/ChinesePinyinConverter;->FQ:Ljava/util/HashMap;

    const/16 v2, 0x7633

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    const-string v3, "CHOU"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    sget-object v0, Lmiui/text/ChinesePinyinConverter;->FQ:Ljava/util/HashMap;

    const v2, 0x957f

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    const-string v3, "CHANG"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    sget-object v0, Lmiui/text/ChinesePinyinConverter;->FQ:Ljava/util/HashMap;

    const v2, 0x8f66

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    const-string v3, "CHE"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    sget-object v0, Lmiui/text/ChinesePinyinConverter;->FQ:Ljava/util/HashMap;

    const/16 v2, 0x7fdf

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    const-string v3, "ZHAI"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    sget-object v0, Lmiui/text/ChinesePinyinConverter;->FQ:Ljava/util/HashMap;

    const/16 v2, 0x4f43

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    const-string v3, "DIAN"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    sget-object v0, Lmiui/text/ChinesePinyinConverter;->FQ:Ljava/util/HashMap;

    const/16 v2, 0x5200

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    const-string v3, "DIAO"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    sget-object v0, Lmiui/text/ChinesePinyinConverter;->FQ:Ljava/util/HashMap;

    const v2, 0x8c03

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    const-string v3, "DIAO"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    sget-object v0, Lmiui/text/ChinesePinyinConverter;->FQ:Ljava/util/HashMap;

    const v2, 0x9046

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    const-string v3, "DI"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    sget-object v0, Lmiui/text/ChinesePinyinConverter;->FQ:Ljava/util/HashMap;

    const/16 v2, 0x660b

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    const-string v3, "GUI"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    sget-object v0, Lmiui/text/ChinesePinyinConverter;->FQ:Ljava/util/HashMap;

    const v2, 0x82a5

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    const-string v3, "GAI"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    sget-object v0, Lmiui/text/ChinesePinyinConverter;->FQ:Ljava/util/HashMap;

    const v2, 0x8312

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    const-string v3, "KUANG"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    sget-object v0, Lmiui/text/ChinesePinyinConverter;->FQ:Ljava/util/HashMap;

    const v2, 0x90c7

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    const-string v3, "HUAN"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    sget-object v0, Lmiui/text/ChinesePinyinConverter;->FQ:Ljava/util/HashMap;

    const/16 v2, 0x5df7

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    const-string v4, "XIANG"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    sget-object v0, Lmiui/text/ChinesePinyinConverter;->FQ:Ljava/util/HashMap;

    const/16 v3, 0x6496

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    const-string v4, "HAN"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    sget-object v0, Lmiui/text/ChinesePinyinConverter;->FQ:Ljava/util/HashMap;

    const v3, 0x89c1

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    const-string v4, "JIAN"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    sget-object v0, Lmiui/text/ChinesePinyinConverter;->FQ:Ljava/util/HashMap;

    const v3, 0x964d

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    const-string v4, "JIANG"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    sget-object v0, Lmiui/text/ChinesePinyinConverter;->FQ:Ljava/util/HashMap;

    const v3, 0x89d2

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    const-string v4, "JIAO"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    sget-object v0, Lmiui/text/ChinesePinyinConverter;->FQ:Ljava/util/HashMap;

    const/16 v3, 0x7f34

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    const-string v4, "JIAO"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    sget-object v0, Lmiui/text/ChinesePinyinConverter;->FQ:Ljava/util/HashMap;

    const v3, 0x8bb0

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    const-string v4, "JI"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    sget-object v0, Lmiui/text/ChinesePinyinConverter;->FQ:Ljava/util/HashMap;

    const/16 v3, 0x741a

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    const-string v4, "JU"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    sget-object v0, Lmiui/text/ChinesePinyinConverter;->FQ:Ljava/util/HashMap;

    const/16 v3, 0x5267

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    const-string v4, "JI"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    sget-object v0, Lmiui/text/ChinesePinyinConverter;->FQ:Ljava/util/HashMap;

    const v3, 0x96bd

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    const-string v4, "JUAN"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    sget-object v0, Lmiui/text/ChinesePinyinConverter;->FQ:Ljava/util/HashMap;

    const v3, 0x9697

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    const-string v4, "KUI"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    sget-object v0, Lmiui/text/ChinesePinyinConverter;->FQ:Ljava/util/HashMap;

    const/16 v3, 0x61a8

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    const-string v4, "KAN"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    sget-object v0, Lmiui/text/ChinesePinyinConverter;->FQ:Ljava/util/HashMap;

    const v3, 0x9760

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    const-string v4, "KU"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    sget-object v0, Lmiui/text/ChinesePinyinConverter;->FQ:Ljava/util/HashMap;

    const/16 v3, 0x4e50

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    const-string v4, "YUE"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    sget-object v0, Lmiui/text/ChinesePinyinConverter;->FQ:Ljava/util/HashMap;

    const/16 v3, 0x5587

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    const-string v4, "LA"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    sget-object v0, Lmiui/text/ChinesePinyinConverter;->FQ:Ljava/util/HashMap;

    const v3, 0x96d2

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    const-string v4, "LUO"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    sget-object v0, Lmiui/text/ChinesePinyinConverter;->FQ:Ljava/util/HashMap;

    const/16 v3, 0x4e86

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    const-string v4, "LIAO"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    sget-object v0, Lmiui/text/ChinesePinyinConverter;->FQ:Ljava/util/HashMap;

    const/16 v3, 0x7f2a

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    const-string v4, "MIAO"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    sget-object v0, Lmiui/text/ChinesePinyinConverter;->FQ:Ljava/util/HashMap;

    const/16 v3, 0x4f74

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    const-string v4, "MI"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    sget-object v0, Lmiui/text/ChinesePinyinConverter;->FQ:Ljava/util/HashMap;

    const v3, 0x8c2c

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    const-string v4, "MIAO"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    sget-object v0, Lmiui/text/ChinesePinyinConverter;->FQ:Ljava/util/HashMap;

    const/16 v3, 0x4e5c

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    const-string v4, "NIE"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    sget-object v0, Lmiui/text/ChinesePinyinConverter;->FQ:Ljava/util/HashMap;

    const v3, 0x9022

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    const-string v4, "PANG"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    sget-object v0, Lmiui/text/ChinesePinyinConverter;->FQ:Ljava/util/HashMap;

    const v3, 0x84ec

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    const-string v4, "PENG"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    sget-object v0, Lmiui/text/ChinesePinyinConverter;->FQ:Ljava/util/HashMap;

    const/16 v3, 0x6734

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    const-string v4, "PIAO"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    sget-object v0, Lmiui/text/ChinesePinyinConverter;->FQ:Ljava/util/HashMap;

    const/16 v3, 0x4ec7

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    const-string v4, "QIU"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    sget-object v0, Lmiui/text/ChinesePinyinConverter;->FQ:Ljava/util/HashMap;

    const v3, 0x8983

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    const-string v4, "QIN"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    sget-object v0, Lmiui/text/ChinesePinyinConverter;->FQ:Ljava/util/HashMap;

    const/16 v3, 0x77bf

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    const-string v4, "QU"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    sget-object v0, Lmiui/text/ChinesePinyinConverter;->FQ:Ljava/util/HashMap;

    const/16 v3, 0x4ec0

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    const-string v4, "SHI"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    sget-object v0, Lmiui/text/ChinesePinyinConverter;->FQ:Ljava/util/HashMap;

    const/16 v3, 0x6298

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    const-string v4, "SHE"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    sget-object v0, Lmiui/text/ChinesePinyinConverter;->FQ:Ljava/util/HashMap;

    const/16 v3, 0x772d

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    const-string v4, "SUI"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    sget-object v0, Lmiui/text/ChinesePinyinConverter;->FQ:Ljava/util/HashMap;

    const v3, 0x89e3

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    const-string v4, "XIE"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    sget-object v0, Lmiui/text/ChinesePinyinConverter;->FQ:Ljava/util/HashMap;

    const/16 v3, 0x7cfb

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    const-string v4, "XI"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    sget-object v0, Lmiui/text/ChinesePinyinConverter;->FQ:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    const-string v3, "XIANG"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    sget-object v0, Lmiui/text/ChinesePinyinConverter;->FQ:Ljava/util/HashMap;

    const v2, 0x9664

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    const-string v3, "XU"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    sget-object v0, Lmiui/text/ChinesePinyinConverter;->FQ:Ljava/util/HashMap;

    const/16 v2, 0x5bf0

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    const-string v3, "XIAN"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    sget-object v0, Lmiui/text/ChinesePinyinConverter;->FQ:Ljava/util/HashMap;

    const/16 v2, 0x5458

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    const-string v3, "YUAN"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    sget-object v0, Lmiui/text/ChinesePinyinConverter;->FQ:Ljava/util/HashMap;

    const v2, 0x8d20

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    const-string v3, "YUAN"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    sget-object v0, Lmiui/text/ChinesePinyinConverter;->FQ:Ljava/util/HashMap;

    const/16 v2, 0x66fe

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    const-string v3, "ZENG"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    sget-object v0, Lmiui/text/ChinesePinyinConverter;->FQ:Ljava/util/HashMap;

    const/16 v2, 0x67e5

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    const-string v3, "ZHA"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    sget-object v0, Lmiui/text/ChinesePinyinConverter;->FQ:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "CHUAN"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    sget-object v0, Lmiui/text/ChinesePinyinConverter;->FQ:Ljava/util/HashMap;

    const/16 v1, 0x53ec

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "SHAO"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    sget-object v0, Lmiui/text/ChinesePinyinConverter;->FQ:Ljava/util/HashMap;

    const v1, 0x91cd

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "chong"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    sget-object v0, Lmiui/text/ChinesePinyinConverter;->FQ:Ljava/util/HashMap;

    const/16 v1, 0x533a

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "OU"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    sget-object v0, Lmiui/text/ChinesePinyinConverter;->FQ:Ljava/util/HashMap;

    const/16 v1, 0x65bc

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "YU"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    new-instance v0, Lmiui/text/ChinesePinyinConverter$ChinesePinyinDictionary;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lmiui/text/ChinesePinyinConverter$ChinesePinyinDictionary;-><init>(Lmiui/text/ChinesePinyinConverter$1;)V

    iput-object v0, p0, Lmiui/text/ChinesePinyinConverter;->FX:Lmiui/text/ChinesePinyinConverter$ChinesePinyinDictionary;

    .line 79
    return-void
.end method

.method synthetic constructor <init>(Lmiui/text/ChinesePinyinConverter$1;)V
    .locals 0

    .line 49
    invoke-direct {p0}, Lmiui/text/ChinesePinyinConverter;-><init>()V

    return-void
.end method

.method private I(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Lmiui/text/ChinesePinyinConverter$Token;",
            ">;"
        }
    .end annotation

    .line 227
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 228
    return-object v1

    .line 231
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 234
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-lt v2, v4, :cond_2

    .line 235
    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 236
    sget-object v5, Lmiui/text/ChinesePinyinConverter;->FP:Ljava/util/HashMap;

    invoke-virtual {v5, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    .line 237
    if-eqz v5, :cond_2

    .line 238
    :goto_0
    array-length p1, v5

    if-ge v3, p1, :cond_1

    .line 239
    new-instance p1, Lmiui/text/ChinesePinyinConverter$Token;

    invoke-direct {p1}, Lmiui/text/ChinesePinyinConverter$Token;-><init>()V

    .line 240
    iput v4, p1, Lmiui/text/ChinesePinyinConverter$Token;->type:I

    .line 241
    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lmiui/text/ChinesePinyinConverter$Token;->source:Ljava/lang/String;

    .line 242
    aget-object v1, v5, v3

    iput-object v1, p1, Lmiui/text/ChinesePinyinConverter$Token;->target:Ljava/lang/String;

    .line 243
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 238
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 246
    :cond_1
    return-object v0

    .line 250
    :cond_2
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result p1

    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p1

    .line 251
    sget-object v2, Lmiui/text/ChinesePinyinConverter;->FQ:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 252
    if-eqz v2, :cond_3

    .line 253
    new-instance v1, Lmiui/text/ChinesePinyinConverter$Token;

    invoke-direct {v1}, Lmiui/text/ChinesePinyinConverter$Token;-><init>()V

    .line 254
    iput v4, v1, Lmiui/text/ChinesePinyinConverter$Token;->type:I

    .line 255
    invoke-virtual {p1}, Ljava/lang/Character;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v1, Lmiui/text/ChinesePinyinConverter$Token;->source:Ljava/lang/String;

    .line 256
    iput-object v2, v1, Lmiui/text/ChinesePinyinConverter$Token;->target:Ljava/lang/String;

    .line 257
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 258
    return-object v0

    .line 261
    :cond_3
    return-object v1
.end method

.method private a(Ljava/lang/StringBuilder;Ljava/util/ArrayList;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Ljava/util/ArrayList<",
            "Lmiui/text/ChinesePinyinConverter$Token;",
            ">;I)V"
        }
    .end annotation

    .line 402
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 403
    new-instance v1, Lmiui/text/ChinesePinyinConverter$Token;

    invoke-direct {v1, p3, v0, v0}, Lmiui/text/ChinesePinyinConverter$Token;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 404
    const/4 v0, 0x0

    const/4 v2, 0x4

    if-ne v2, p3, :cond_1

    .line 405
    invoke-static {}, Lmiui/text/HindiPinyinConverter;->getInstance()Lmiui/text/HindiPinyinConverter;

    move-result-object p3

    iget-object v2, v1, Lmiui/text/ChinesePinyinConverter$Token;->source:Ljava/lang/String;

    invoke-virtual {p3, v2}, Lmiui/text/HindiPinyinConverter;->hindiToPinyins(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p3

    .line 406
    array-length v2, p3

    if-lez v2, :cond_1

    .line 407
    const/4 v2, 0x1

    array-length v3, p3

    if-ne v3, v2, :cond_0

    .line 408
    aget-object p3, p3, v0

    iput-object p3, v1, Lmiui/text/ChinesePinyinConverter$Token;->target:Ljava/lang/String;

    .line 409
    new-array p3, v2, [Ljava/lang/String;

    iget-object v2, v1, Lmiui/text/ChinesePinyinConverter$Token;->target:Ljava/lang/String;

    aput-object v2, p3, v0

    iput-object p3, v1, Lmiui/text/ChinesePinyinConverter$Token;->polyPhones:[Ljava/lang/String;

    goto :goto_0

    .line 411
    :cond_0
    aget-object v2, p3, v0

    iput-object v2, v1, Lmiui/text/ChinesePinyinConverter$Token;->target:Ljava/lang/String;

    .line 412
    iput-object p3, v1, Lmiui/text/ChinesePinyinConverter$Token;->polyPhones:[Ljava/lang/String;

    .line 416
    :cond_1
    :goto_0
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 417
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 418
    return-void
.end method

.method public static getInstance()Lmiui/text/ChinesePinyinConverter;
    .locals 1

    .line 85
    sget-object v0, Lmiui/text/ChinesePinyinConverter;->s:Lmiui/util/SoftReferenceSingleton;

    invoke-virtual {v0}, Lmiui/util/SoftReferenceSingleton;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/text/ChinesePinyinConverter;

    return-object v0
.end method


# virtual methods
.method public convertPinyin2Bopomofo(Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/CharSequence;
    .locals 0

    .line 432
    invoke-static {p1, p2}, Lmiui/text/ChinesePinyinConverter$BopomofoConvertor;->a(Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method

.method public get(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Lmiui/text/ChinesePinyinConverter$Token;",
            ">;"
        }
    .end annotation

    .line 274
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0, v0}, Lmiui/text/ChinesePinyinConverter;->get(Ljava/lang/String;ZZ)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1
.end method

.method public get(Ljava/lang/String;ZZ)Ljava/util/ArrayList;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "ZZ)",
            "Ljava/util/ArrayList<",
            "Lmiui/text/ChinesePinyinConverter$Token;",
            ">;"
        }
    .end annotation

    .line 290
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 291
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 293
    return-object v0

    .line 296
    :cond_0
    nop

    .line 297
    const/4 v1, 0x0

    if-nez p3, :cond_1

    .line 298
    invoke-direct {p0, p1}, Lmiui/text/ChinesePinyinConverter;->I(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p3

    .line 299
    if-eqz p3, :cond_1

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 300
    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 301
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    goto :goto_0

    .line 305
    :cond_1
    move p3, v1

    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 306
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 307
    nop

    .line 312
    const/4 v4, 0x1

    move v5, v4

    :goto_1
    if-ge p3, v2, :cond_15

    .line 313
    invoke-virtual {p1, p3}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 314
    const/4 v7, 0x4

    const/16 v8, 0x20

    const/4 v9, 0x2

    const/4 v10, 0x3

    if-ne v6, v8, :cond_4

    .line 315
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-lez v6, :cond_2

    .line 316
    invoke-direct {p0, v3, v0, v5}, Lmiui/text/ChinesePinyinConverter;->a(Ljava/lang/StringBuilder;Ljava/util/ArrayList;I)V

    .line 318
    :cond_2
    if-nez p2, :cond_3

    .line 319
    invoke-static {v8}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v5

    .line 320
    new-instance v6, Lmiui/text/ChinesePinyinConverter$Token;

    invoke-direct {v6, v10, v5, v5}, Lmiui/text/ChinesePinyinConverter$Token;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 322
    :cond_3
    nop

    .line 312
    :goto_2
    move v5, v10

    goto/16 :goto_8

    .line 323
    :cond_4
    const/16 v8, 0x100

    if-ge v6, v8, :cond_9

    .line 327
    if-lez p3, :cond_7

    .line 328
    add-int/lit8 v7, p3, -0x1

    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    .line 329
    const/16 v8, 0x39

    const/16 v9, 0x30

    if-lt v7, v9, :cond_5

    if-gt v7, v8, :cond_5

    .line 330
    move v7, v4

    goto :goto_3

    .line 329
    :cond_5
    nop

    .line 330
    move v7, v1

    :goto_3
    if-lt v6, v9, :cond_6

    if-gt v6, v8, :cond_6

    .line 332
    move v8, v4

    goto :goto_4

    .line 330
    :cond_6
    nop

    .line 332
    move v8, v1

    :goto_4
    if-eq v7, v8, :cond_7

    .line 333
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-lez v7, :cond_7

    .line 334
    invoke-direct {p0, v3, v0, v5}, Lmiui/text/ChinesePinyinConverter;->a(Ljava/lang/StringBuilder;Ljava/util/ArrayList;I)V

    .line 339
    :cond_7
    if-eq v5, v4, :cond_8

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-lez v7, :cond_8

    .line 340
    invoke-direct {p0, v3, v0, v5}, Lmiui/text/ChinesePinyinConverter;->a(Ljava/lang/StringBuilder;Ljava/util/ArrayList;I)V

    .line 342
    :cond_8
    nop

    .line 343
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 312
    move v5, v4

    goto/16 :goto_8

    .line 344
    :cond_9
    const/16 v8, 0x3007

    if-ne v6, v8, :cond_b

    .line 345
    new-instance v6, Lmiui/text/ChinesePinyinConverter$Token;

    invoke-direct {v6}, Lmiui/text/ChinesePinyinConverter$Token;-><init>()V

    .line 346
    iput v9, v6, Lmiui/text/ChinesePinyinConverter$Token;->type:I

    .line 347
    const-string v7, "ling"

    iput-object v7, v6, Lmiui/text/ChinesePinyinConverter$Token;->target:Ljava/lang/String;

    .line 348
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-lez v7, :cond_a

    .line 349
    invoke-direct {p0, v3, v0, v5}, Lmiui/text/ChinesePinyinConverter;->a(Ljava/lang/StringBuilder;Ljava/util/ArrayList;I)V

    .line 351
    :cond_a
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 352
    nop

    .line 353
    nop

    .line 312
    :goto_5
    move v5, v9

    goto/16 :goto_8

    .line 353
    :cond_b
    const/16 v8, 0x4e00

    if-lt v6, v8, :cond_11

    const v8, 0x9fa5

    if-gt v6, v8, :cond_11

    .line 354
    iget-object v7, p0, Lmiui/text/ChinesePinyinConverter;->FX:Lmiui/text/ChinesePinyinConverter$ChinesePinyinDictionary;

    invoke-virtual {v7, v6}, Lmiui/text/ChinesePinyinConverter$ChinesePinyinDictionary;->a(C)[Ljava/lang/String;

    move-result-object v7

    .line 355
    new-instance v8, Lmiui/text/ChinesePinyinConverter$Token;

    invoke-direct {v8}, Lmiui/text/ChinesePinyinConverter$Token;-><init>()V

    .line 356
    invoke-static {v6}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v8, Lmiui/text/ChinesePinyinConverter$Token;->source:Ljava/lang/String;

    .line 357
    if-nez v7, :cond_c

    .line 358
    iput v10, v8, Lmiui/text/ChinesePinyinConverter$Token;->type:I

    .line 359
    invoke-static {v6}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v8, Lmiui/text/ChinesePinyinConverter$Token;->target:Ljava/lang/String;

    goto :goto_6

    .line 361
    :cond_c
    iput v9, v8, Lmiui/text/ChinesePinyinConverter$Token;->type:I

    .line 362
    aget-object v10, v7, v1

    iput-object v10, v8, Lmiui/text/ChinesePinyinConverter$Token;->target:Ljava/lang/String;

    .line 363
    array-length v10, v7

    if-le v10, v4, :cond_d

    .line 364
    iput-object v7, v8, Lmiui/text/ChinesePinyinConverter$Token;->polyPhones:[Ljava/lang/String;

    .line 367
    :cond_d
    :goto_6
    iget v7, v8, Lmiui/text/ChinesePinyinConverter$Token;->type:I

    if-ne v7, v9, :cond_f

    .line 368
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-lez v6, :cond_e

    .line 369
    invoke-direct {p0, v3, v0, v5}, Lmiui/text/ChinesePinyinConverter;->a(Ljava/lang/StringBuilder;Ljava/util/ArrayList;I)V

    .line 371
    :cond_e
    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 372
    goto :goto_7

    .line 374
    :cond_f
    iget v7, v8, Lmiui/text/ChinesePinyinConverter$Token;->type:I

    if-eq v5, v7, :cond_10

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-lez v7, :cond_10

    .line 375
    invoke-direct {p0, v3, v0, v5}, Lmiui/text/ChinesePinyinConverter;->a(Ljava/lang/StringBuilder;Ljava/util/ArrayList;I)V

    .line 377
    :cond_10
    iget v9, v8, Lmiui/text/ChinesePinyinConverter$Token;->type:I

    .line 378
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 380
    :goto_7
    goto :goto_5

    :cond_11
    const/16 v8, 0x900

    if-lt v6, v8, :cond_13

    const/16 v8, 0x97f

    if-gt v6, v8, :cond_13

    .line 381
    if-eq v5, v7, :cond_12

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    if-lez v8, :cond_12

    .line 382
    invoke-direct {p0, v3, v0, v5}, Lmiui/text/ChinesePinyinConverter;->a(Ljava/lang/StringBuilder;Ljava/util/ArrayList;I)V

    .line 384
    :cond_12
    nop

    .line 385
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 312
    move v5, v7

    goto :goto_8

    .line 387
    :cond_13
    if-eq v5, v10, :cond_14

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-lez v7, :cond_14

    .line 388
    invoke-direct {p0, v3, v0, v5}, Lmiui/text/ChinesePinyinConverter;->a(Ljava/lang/StringBuilder;Ljava/util/ArrayList;I)V

    .line 390
    :cond_14
    nop

    .line 391
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 312
    :goto_8
    add-int/lit8 p3, p3, 0x1

    goto/16 :goto_1

    .line 394
    :cond_15
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    if-lez p1, :cond_16

    .line 395
    invoke-direct {p0, v3, v0, v5}, Lmiui/text/ChinesePinyinConverter;->a(Ljava/lang/StringBuilder;Ljava/util/ArrayList;I)V

    .line 397
    :cond_16
    return-object v0
.end method

.method public isChinesePinyinKnown(C)Z
    .locals 1

    .line 92
    const/16 v0, 0x4e00

    if-lt p1, v0, :cond_0

    const v0, 0x9fa5

    if-gt p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
