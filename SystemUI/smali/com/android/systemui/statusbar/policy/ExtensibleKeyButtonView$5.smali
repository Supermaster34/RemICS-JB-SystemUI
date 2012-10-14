.class Lcom/android/systemui/statusbar/policy/ExtensibleKeyButtonView$5;
.super Ljava/lang/Object;
.source "ExtensibleKeyButtonView.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/ExtensibleKeyButtonView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/ExtensibleKeyButtonView;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/ExtensibleKeyButtonView;)V
    .locals 0
    .parameter

    .prologue
    .line 231
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/ExtensibleKeyButtonView$5;->this$0:Lcom/android/systemui/statusbar/policy/ExtensibleKeyButtonView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 6
    .parameter "v"

    .prologue
    const/4 v5, 0x1

    .line 235
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/ExtensibleKeyButtonView$5;->this$0:Lcom/android/systemui/statusbar/policy/ExtensibleKeyButtonView;

    iget-object v2, v2, Lcom/android/systemui/statusbar/policy/ExtensibleKeyButtonView;->mLongpress:Ljava/lang/String;

    if-nez v2, :cond_1

    .line 293
    :cond_0
    :goto_0
    return v5

    .line 238
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/ExtensibleKeyButtonView$5;->this$0:Lcom/android/systemui/statusbar/policy/ExtensibleKeyButtonView;

    iget-object v2, v2, Lcom/android/systemui/statusbar/policy/ExtensibleKeyButtonView;->mLongpress:Ljava/lang/String;

    const-string v3, "**null**"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 242
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/ExtensibleKeyButtonView$5;->this$0:Lcom/android/systemui/statusbar/policy/ExtensibleKeyButtonView;

    iget-object v2, v2, Lcom/android/systemui/statusbar/policy/ExtensibleKeyButtonView;->mLongpress:Ljava/lang/String;

    const-string v3, "**home**"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 243
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/ExtensibleKeyButtonView$5;->this$0:Lcom/android/systemui/statusbar/policy/ExtensibleKeyButtonView;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/policy/ExtensibleKeyButtonView;->injectKeyDelayed(I)V

    goto :goto_0

    .line 245
    :cond_2
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/ExtensibleKeyButtonView$5;->this$0:Lcom/android/systemui/statusbar/policy/ExtensibleKeyButtonView;

    iget-object v2, v2, Lcom/android/systemui/statusbar/policy/ExtensibleKeyButtonView;->mLongpress:Ljava/lang/String;

    const-string v3, "**back**"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 246
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/ExtensibleKeyButtonView$5;->this$0:Lcom/android/systemui/statusbar/policy/ExtensibleKeyButtonView;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/policy/ExtensibleKeyButtonView;->injectKeyDelayed(I)V

    goto :goto_0

    .line 248
    :cond_3
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/ExtensibleKeyButtonView$5;->this$0:Lcom/android/systemui/statusbar/policy/ExtensibleKeyButtonView;

    iget-object v2, v2, Lcom/android/systemui/statusbar/policy/ExtensibleKeyButtonView;->mLongpress:Ljava/lang/String;

    const-string v3, "**search**"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 249
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/ExtensibleKeyButtonView$5;->this$0:Lcom/android/systemui/statusbar/policy/ExtensibleKeyButtonView;

    const/16 v3, 0x54

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/policy/ExtensibleKeyButtonView;->injectKeyDelayed(I)V

    goto :goto_0

    .line 251
    :cond_4
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/ExtensibleKeyButtonView$5;->this$0:Lcom/android/systemui/statusbar/policy/ExtensibleKeyButtonView;

    iget-object v2, v2, Lcom/android/systemui/statusbar/policy/ExtensibleKeyButtonView;->mLongpress:Ljava/lang/String;

    const-string v3, "**menu**"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 252
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/ExtensibleKeyButtonView$5;->this$0:Lcom/android/systemui/statusbar/policy/ExtensibleKeyButtonView;

    const/16 v3, 0x52

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/policy/ExtensibleKeyButtonView;->injectKeyDelayed(I)V

    goto :goto_0

    .line 254
    :cond_5
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/ExtensibleKeyButtonView$5;->this$0:Lcom/android/systemui/statusbar/policy/ExtensibleKeyButtonView;

    iget-object v2, v2, Lcom/android/systemui/statusbar/policy/ExtensibleKeyButtonView;->mLongpress:Ljava/lang/String;

    const-string v3, "**power**"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 255
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/ExtensibleKeyButtonView$5;->this$0:Lcom/android/systemui/statusbar/policy/ExtensibleKeyButtonView;

    const/16 v3, 0x1a

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/policy/ExtensibleKeyButtonView;->injectKeyDelayed(I)V

    goto :goto_0

    .line 257
    :cond_6
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/ExtensibleKeyButtonView$5;->this$0:Lcom/android/systemui/statusbar/policy/ExtensibleKeyButtonView;

    iget-object v2, v2, Lcom/android/systemui/statusbar/policy/ExtensibleKeyButtonView;->mLongpress:Ljava/lang/String;

    const-string v3, "**kill**"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 258
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/ExtensibleKeyButtonView$5;->this$0:Lcom/android/systemui/statusbar/policy/ExtensibleKeyButtonView;

    iget-object v2, v2, Lcom/android/systemui/statusbar/policy/ExtensibleKeyButtonView;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/ExtensibleKeyButtonView$5;->this$0:Lcom/android/systemui/statusbar/policy/ExtensibleKeyButtonView;

    iget-object v3, v3, Lcom/android/systemui/statusbar/policy/ExtensibleKeyButtonView;->mKillTask:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    .line 260
    :cond_7
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/ExtensibleKeyButtonView$5;->this$0:Lcom/android/systemui/statusbar/policy/ExtensibleKeyButtonView;

    iget-object v2, v2, Lcom/android/systemui/statusbar/policy/ExtensibleKeyButtonView;->mLongpress:Ljava/lang/String;

    const-string v3, "**widgets**"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 268
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/ExtensibleKeyButtonView$5;->this$0:Lcom/android/systemui/statusbar/policy/ExtensibleKeyButtonView;

    iget-object v2, v2, Lcom/android/systemui/statusbar/policy/ExtensibleKeyButtonView;->mLongpress:Ljava/lang/String;

    const-string v3, "**recents**"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 270
    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/ExtensibleKeyButtonView$5;->this$0:Lcom/android/systemui/statusbar/policy/ExtensibleKeyButtonView;

    iget-object v2, v2, Lcom/android/systemui/statusbar/policy/ExtensibleKeyButtonView;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    invoke-interface {v2}, Lcom/android/internal/statusbar/IStatusBarService;->toggleRecentApps()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 271
    :catch_0
    move-exception v2

    goto/16 :goto_0

    .line 275
    :cond_8
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/ExtensibleKeyButtonView$5;->this$0:Lcom/android/systemui/statusbar/policy/ExtensibleKeyButtonView;

    iget-object v2, v2, Lcom/android/systemui/statusbar/policy/ExtensibleKeyButtonView;->mClickAction:Ljava/lang/String;

    const-string v3, "**notifications**"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 277
    :try_start_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/ExtensibleKeyButtonView$5;->this$0:Lcom/android/systemui/statusbar/policy/ExtensibleKeyButtonView;

    iget-object v2, v2, Lcom/android/systemui/statusbar/policy/ExtensibleKeyButtonView;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    invoke-interface {v2}, Lcom/android/internal/statusbar/IStatusBarService;->toggleNotificationShade()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 278
    :catch_1
    move-exception v2

    goto/16 :goto_0

    .line 285
    :cond_9
    :try_start_2
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/ExtensibleKeyButtonView$5;->this$0:Lcom/android/systemui/statusbar/policy/ExtensibleKeyButtonView;

    iget-object v2, v2, Lcom/android/systemui/statusbar/policy/ExtensibleKeyButtonView;->mLongpress:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v1

    .line 286
    .local v1, intent:Landroid/content/Intent;
    const/high16 v2, 0x1000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 287
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/ExtensibleKeyButtonView$5;->this$0:Lcom/android/systemui/statusbar/policy/ExtensibleKeyButtonView;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/policy/ExtensibleKeyButtonView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_2
    .catch Ljava/net/URISyntaxException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2 .. :try_end_2} :catch_3

    goto/16 :goto_0

    .line 288
    .end local v1           #intent:Landroid/content/Intent;
    :catch_2
    move-exception v0

    .line 289
    .local v0, e:Ljava/net/URISyntaxException;
    const-string v2, "Key.Ext"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "URISyntaxException: ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/ExtensibleKeyButtonView$5;->this$0:Lcom/android/systemui/statusbar/policy/ExtensibleKeyButtonView;

    iget-object v4, v4, Lcom/android/systemui/statusbar/policy/ExtensibleKeyButtonView;->mLongpress:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 290
    .end local v0           #e:Ljava/net/URISyntaxException;
    :catch_3
    move-exception v0

    .line 291
    .local v0, e:Landroid/content/ActivityNotFoundException;
    const-string v2, "Key.Ext"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ActivityNotFound: ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/ExtensibleKeyButtonView$5;->this$0:Lcom/android/systemui/statusbar/policy/ExtensibleKeyButtonView;

    iget-object v4, v4, Lcom/android/systemui/statusbar/policy/ExtensibleKeyButtonView;->mLongpress:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method
