.class Lcom/xiaomi/scanner/translation/adapter/KingSoftAdapter$2;
.super Ljava/lang/Object;
.source "KingSoftAdapter.java"

# interfaces
.implements Lcom/kingsoft/iciba/powerwordocrjar/IKSCibaQueryResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/scanner/translation/adapter/KingSoftAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaomi/scanner/translation/adapter/KingSoftAdapter;


# direct methods
.method constructor <init>(Lcom/xiaomi/scanner/translation/adapter/KingSoftAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaomi/scanner/translation/adapter/KingSoftAdapter;

    .prologue
    .line 217
    iput-object p1, p0, Lcom/xiaomi/scanner/translation/adapter/KingSoftAdapter$2;->this$0:Lcom/xiaomi/scanner/translation/adapter/KingSoftAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public iksCibaQueryResultListener(Lcom/kingsoft/iciba/powerwordocrjar/InfoBean;)V
    .locals 12
    .param p1, "infoBean"    # Lcom/kingsoft/iciba/powerwordocrjar/InfoBean;

    .prologue
    .line 221
    invoke-static {}, Lcom/xiaomi/scanner/translation/adapter/KingSoftAdapter;->access$000()Lcom/xiaomi/scanner/debug/Log$Tag;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "receive iksCibaQueryResultListener callback, cost="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iget-object v7, p0, Lcom/xiaomi/scanner/translation/adapter/KingSoftAdapter$2;->this$0:Lcom/xiaomi/scanner/translation/adapter/KingSoftAdapter;

    invoke-static {v7}, Lcom/xiaomi/scanner/translation/adapter/KingSoftAdapter;->access$600(Lcom/xiaomi/scanner/translation/adapter/KingSoftAdapter;)J

    move-result-wide v10

    sub-long/2addr v8, v10

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/xiaomi/scanner/debug/Log;->v(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 223
    iget-object v5, p0, Lcom/xiaomi/scanner/translation/adapter/KingSoftAdapter$2;->this$0:Lcom/xiaomi/scanner/translation/adapter/KingSoftAdapter;

    invoke-static {v5}, Lcom/xiaomi/scanner/translation/adapter/KingSoftAdapter;->access$700(Lcom/xiaomi/scanner/translation/adapter/KingSoftAdapter;)Lcom/xiaomi/scanner/translation/adapter/TranslationAdapter$TranslationResult;

    move-result-object v5

    if-nez v5, :cond_0

    .line 224
    invoke-static {}, Lcom/xiaomi/scanner/translation/adapter/KingSoftAdapter;->access$000()Lcom/xiaomi/scanner/debug/Log$Tag;

    move-result-object v5

    const-string v6, "drop this result, while translation is done"

    invoke-static {v5, v6}, Lcom/xiaomi/scanner/debug/Log;->v(Lcom/xiaomi/scanner/debug/Log$Tag;Ljava/lang/String;)V

    .line 225
    iget-object v5, p0, Lcom/xiaomi/scanner/translation/adapter/KingSoftAdapter$2;->this$0:Lcom/xiaomi/scanner/translation/adapter/KingSoftAdapter;

    invoke-static {v5}, Lcom/xiaomi/scanner/translation/adapter/KingSoftAdapter;->access$800(Lcom/xiaomi/scanner/translation/adapter/KingSoftAdapter;)V

    .line 264
    :goto_0
    return-void

    .line 229
    :cond_0
    iget-object v5, p0, Lcom/xiaomi/scanner/translation/adapter/KingSoftAdapter$2;->this$0:Lcom/xiaomi/scanner/translation/adapter/KingSoftAdapter;

    invoke-static {v5}, Lcom/xiaomi/scanner/translation/adapter/KingSoftAdapter;->access$900(Lcom/xiaomi/scanner/translation/adapter/KingSoftAdapter;)Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6

    .line 230
    :try_start_0
    iget v5, p1, Lcom/kingsoft/iciba/powerwordocrjar/InfoBean;->status:I

    if-nez v5, :cond_3

    .line 231
    iget-object v5, p0, Lcom/xiaomi/scanner/translation/adapter/KingSoftAdapter$2;->this$0:Lcom/xiaomi/scanner/translation/adapter/KingSoftAdapter;

    invoke-static {v5}, Lcom/xiaomi/scanner/translation/adapter/KingSoftAdapter;->access$700(Lcom/xiaomi/scanner/translation/adapter/KingSoftAdapter;)Lcom/xiaomi/scanner/translation/adapter/TranslationAdapter$TranslationResult;

    move-result-object v5

    const/4 v7, 0x3

    invoke-virtual {v5, v7}, Lcom/xiaomi/scanner/translation/adapter/TranslationAdapter$TranslationResult;->setState(I)V

    .line 235
    :goto_1
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 236
    iget-object v5, p1, Lcom/kingsoft/iciba/powerwordocrjar/InfoBean;->baseInfoBeans:Ljava/util/ArrayList;

    if-eqz v5, :cond_6

    iget-object v5, p1, Lcom/kingsoft/iciba/powerwordocrjar/InfoBean;->baseInfoBeans:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_6

    .line 237
    iget-object v5, p1, Lcom/kingsoft/iciba/powerwordocrjar/InfoBean;->baseInfoBeans:Ljava/util/ArrayList;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingsoft/iciba/powerwordocrjar/BaseInfoBean;

    .line 238
    .local v0, "baseInfoBean":Lcom/kingsoft/iciba/powerwordocrjar/BaseInfoBean;
    iget-object v3, v0, Lcom/kingsoft/iciba/powerwordocrjar/BaseInfoBean;->shiyiBeans:Ljava/util/ArrayList;

    .line 239
    .local v3, "shiyiBeans":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/kingsoft/iciba/powerwordocrjar/ShiyiBean;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 240
    .local v4, "symbols":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v5, v0, Lcom/kingsoft/iciba/powerwordocrjar/BaseInfoBean;->chSymbol:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 241
    iget-object v5, v0, Lcom/kingsoft/iciba/powerwordocrjar/BaseInfoBean;->ukSymbol:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 242
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u82f1 ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v0, Lcom/kingsoft/iciba/powerwordocrjar/BaseInfoBean;->ukSymbol:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 244
    :cond_1
    iget-object v5, v0, Lcom/kingsoft/iciba/powerwordocrjar/BaseInfoBean;->usSymbol:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 245
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u7f8e ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v0, Lcom/kingsoft/iciba/powerwordocrjar/BaseInfoBean;->usSymbol:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 250
    :cond_2
    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 251
    .local v1, "explanation":Ljava/lang/StringBuilder;
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/kingsoft/iciba/powerwordocrjar/ShiyiBean;

    .line 252
    .local v2, "s":Lcom/kingsoft/iciba/powerwordocrjar/ShiyiBean;
    iget-object v6, v2, Lcom/kingsoft/iciba/powerwordocrjar/ShiyiBean;->cixing:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "   "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v2, Lcom/kingsoft/iciba/powerwordocrjar/ShiyiBean;->shiyi:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 233
    .end local v0    # "baseInfoBean":Lcom/kingsoft/iciba/powerwordocrjar/BaseInfoBean;
    .end local v1    # "explanation":Ljava/lang/StringBuilder;
    .end local v2    # "s":Lcom/kingsoft/iciba/powerwordocrjar/ShiyiBean;
    .end local v3    # "shiyiBeans":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/kingsoft/iciba/powerwordocrjar/ShiyiBean;>;"
    .end local v4    # "symbols":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_3
    :try_start_1
    iget-object v5, p0, Lcom/xiaomi/scanner/translation/adapter/KingSoftAdapter$2;->this$0:Lcom/xiaomi/scanner/translation/adapter/KingSoftAdapter;

    invoke-static {v5}, Lcom/xiaomi/scanner/translation/adapter/KingSoftAdapter;->access$700(Lcom/xiaomi/scanner/translation/adapter/KingSoftAdapter;)Lcom/xiaomi/scanner/translation/adapter/TranslationAdapter$TranslationResult;

    move-result-object v5

    const/4 v7, 0x1

    invoke-virtual {v5, v7}, Lcom/xiaomi/scanner/translation/adapter/TranslationAdapter$TranslationResult;->setState(I)V

    goto/16 :goto_1

    .line 235
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v5

    .line 248
    .restart local v0    # "baseInfoBean":Lcom/kingsoft/iciba/powerwordocrjar/BaseInfoBean;
    .restart local v3    # "shiyiBeans":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/kingsoft/iciba/powerwordocrjar/ShiyiBean;>;"
    .restart local v4    # "symbols":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v0, Lcom/kingsoft/iciba/powerwordocrjar/BaseInfoBean;->chSymbol:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 254
    .restart local v1    # "explanation":Ljava/lang/StringBuilder;
    :cond_5
    iget-object v5, p0, Lcom/xiaomi/scanner/translation/adapter/KingSoftAdapter$2;->this$0:Lcom/xiaomi/scanner/translation/adapter/KingSoftAdapter;

    invoke-static {v5}, Lcom/xiaomi/scanner/translation/adapter/KingSoftAdapter;->access$700(Lcom/xiaomi/scanner/translation/adapter/KingSoftAdapter;)Lcom/xiaomi/scanner/translation/adapter/TranslationAdapter$TranslationResult;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/xiaomi/scanner/translation/adapter/TranslationAdapter$TranslationResult;->setDefinition(Ljava/lang/String;)V

    .line 255
    iget-object v5, p0, Lcom/xiaomi/scanner/translation/adapter/KingSoftAdapter$2;->this$0:Lcom/xiaomi/scanner/translation/adapter/KingSoftAdapter;

    invoke-static {v5}, Lcom/xiaomi/scanner/translation/adapter/KingSoftAdapter;->access$700(Lcom/xiaomi/scanner/translation/adapter/KingSoftAdapter;)Lcom/xiaomi/scanner/translation/adapter/TranslationAdapter$TranslationResult;

    move-result-object v5

    iget-object v6, p1, Lcom/kingsoft/iciba/powerwordocrjar/InfoBean;->word:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/xiaomi/scanner/translation/adapter/TranslationAdapter$TranslationResult;->setOcrResult(Ljava/lang/String;)V

    .line 256
    iget-object v5, p0, Lcom/xiaomi/scanner/translation/adapter/KingSoftAdapter$2;->this$0:Lcom/xiaomi/scanner/translation/adapter/KingSoftAdapter;

    invoke-static {v5}, Lcom/xiaomi/scanner/translation/adapter/KingSoftAdapter;->access$700(Lcom/xiaomi/scanner/translation/adapter/KingSoftAdapter;)Lcom/xiaomi/scanner/translation/adapter/TranslationAdapter$TranslationResult;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/xiaomi/scanner/translation/adapter/TranslationAdapter$TranslationResult;->setSymbols(Ljava/util/ArrayList;)V

    .line 259
    .end local v0    # "baseInfoBean":Lcom/kingsoft/iciba/powerwordocrjar/BaseInfoBean;
    .end local v1    # "explanation":Ljava/lang/StringBuilder;
    .end local v3    # "shiyiBeans":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/kingsoft/iciba/powerwordocrjar/ShiyiBean;>;"
    .end local v4    # "symbols":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_6
    iget-object v5, p0, Lcom/xiaomi/scanner/translation/adapter/KingSoftAdapter$2;->this$0:Lcom/xiaomi/scanner/translation/adapter/KingSoftAdapter;

    const/4 v6, 0x2

    invoke-static {v5, v6}, Lcom/xiaomi/scanner/translation/adapter/KingSoftAdapter;->access$1000(Lcom/xiaomi/scanner/translation/adapter/KingSoftAdapter;I)V

    .line 260
    iget-object v5, p0, Lcom/xiaomi/scanner/translation/adapter/KingSoftAdapter$2;->this$0:Lcom/xiaomi/scanner/translation/adapter/KingSoftAdapter;

    iget-object v5, v5, Lcom/xiaomi/scanner/translation/adapter/KingSoftAdapter;->mTranslationListener:Lcom/xiaomi/scanner/translation/adapter/TranslationAdapter$TranslationListener;

    if-eqz v5, :cond_7

    .line 261
    iget-object v5, p0, Lcom/xiaomi/scanner/translation/adapter/KingSoftAdapter$2;->this$0:Lcom/xiaomi/scanner/translation/adapter/KingSoftAdapter;

    iget-object v5, v5, Lcom/xiaomi/scanner/translation/adapter/KingSoftAdapter;->mTranslationListener:Lcom/xiaomi/scanner/translation/adapter/TranslationAdapter$TranslationListener;

    iget-object v6, p0, Lcom/xiaomi/scanner/translation/adapter/KingSoftAdapter$2;->this$0:Lcom/xiaomi/scanner/translation/adapter/KingSoftAdapter;

    invoke-static {v6}, Lcom/xiaomi/scanner/translation/adapter/KingSoftAdapter;->access$700(Lcom/xiaomi/scanner/translation/adapter/KingSoftAdapter;)Lcom/xiaomi/scanner/translation/adapter/TranslationAdapter$TranslationResult;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/xiaomi/scanner/translation/adapter/TranslationAdapter$TranslationListener;->onDefinitionDone(Lcom/xiaomi/scanner/translation/adapter/TranslationAdapter$TranslationResult;)V

    .line 263
    :cond_7
    iget-object v5, p0, Lcom/xiaomi/scanner/translation/adapter/KingSoftAdapter$2;->this$0:Lcom/xiaomi/scanner/translation/adapter/KingSoftAdapter;

    invoke-static {v5}, Lcom/xiaomi/scanner/translation/adapter/KingSoftAdapter;->access$1100(Lcom/xiaomi/scanner/translation/adapter/KingSoftAdapter;)V

    goto/16 :goto_0
.end method
