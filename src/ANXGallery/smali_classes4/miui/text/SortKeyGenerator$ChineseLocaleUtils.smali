.class Lmiui/text/SortKeyGenerator$ChineseLocaleUtils;
.super Lmiui/text/SortKeyGenerator$BaseGenerator;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/text/SortKeyGenerator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ChineseLocaleUtils"
.end annotation


# instance fields
.field final synthetic GP:Lmiui/text/SortKeyGenerator;


# direct methods
.method private constructor <init>(Lmiui/text/SortKeyGenerator;)V
    .locals 1

    .line 189
    iput-object p1, p0, Lmiui/text/SortKeyGenerator$ChineseLocaleUtils;->GP:Lmiui/text/SortKeyGenerator;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lmiui/text/SortKeyGenerator$BaseGenerator;-><init>(Lmiui/text/SortKeyGenerator;Lmiui/text/SortKeyGenerator$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lmiui/text/SortKeyGenerator;Lmiui/text/SortKeyGenerator$1;)V
    .locals 0

    .line 189
    invoke-direct {p0, p1}, Lmiui/text/SortKeyGenerator$ChineseLocaleUtils;-><init>(Lmiui/text/SortKeyGenerator;)V

    return-void
.end method


# virtual methods
.method public getSortKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 192
    invoke-static {}, Lmiui/text/ChinesePinyinConverter;->getInstance()Lmiui/text/ChinesePinyinConverter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lmiui/text/ChinesePinyinConverter;->get(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 193
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_5

    .line 194
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 195
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/text/ChinesePinyinConverter$Token;

    .line 198
    const/4 v2, 0x2

    iget v3, v1, Lmiui/text/ChinesePinyinConverter$Token;->type:I

    const/16 v4, 0x20

    if-ne v2, v3, :cond_2

    .line 199
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 200
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 207
    :cond_0
    iget-object v2, v1, Lmiui/text/ChinesePinyinConverter$Token;->target:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 208
    const-string v2, "   "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    iget-object v2, v1, Lmiui/text/ChinesePinyinConverter$Token;->target:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_1

    .line 210
    iget-object v2, v1, Lmiui/text/ChinesePinyinConverter$Token;->target:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    :cond_1
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 213
    iget-object v1, v1, Lmiui/text/ChinesePinyinConverter$Token;->source:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 215
    :cond_2
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_3

    .line 216
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 218
    :cond_3
    iget-object v1, v1, Lmiui/text/ChinesePinyinConverter$Token;->source:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    :goto_1
    goto :goto_0

    .line 221
    :cond_4
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 223
    :cond_5
    invoke-super {p0, p1}, Lmiui/text/SortKeyGenerator$BaseGenerator;->getSortKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
