.class Lcom/android/systemui/statusbar/policy/ExtensibleKeyButtonView$4;
.super Ljava/lang/Object;
.source "ExtensibleKeyButtonView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 178
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/ExtensibleKeyButtonView$4;->this$0:Lcom/android/systemui/statusbar/policy/ExtensibleKeyButtonView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "v"

    .prologue
    .line 184
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/ExtensibleKeyButtonView$4;->this$0:Lcom/android/systemui/statusbar/policy/ExtensibleKeyButtonView;

    iget-object v2, v2, Lcom/android/systemui/statusbar/policy/ExtensibleKeyButtonView;->mClickAction:Ljava/lang/String;

    const-string v3, "**null**"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 227
    :cond_0
    :goto_0
    return-void

    .line 189
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/ExtensibleKeyButtonView$4;->this$0:Lcom/android/systemui/statusbar/policy/ExtensibleKeyButtonView;

    iget-object v2, v2, Lcom/android/systemui/statusbar/policy/ExtensibleKeyButtonView;->mClickAction:Ljava/lang/String;

    const-string v3, "**recents**"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 191
    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/ExtensibleKeyButtonView$4;->this$0:Lcom/android/systemui/statusbar/policy/ExtensibleKeyButtonView;

    iget-object v2, v2, Lcom/android/systemui/statusbar/policy/ExtensibleKeyButtonView;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    invoke-interface {v2}, Lcom/android/internal/statusbar/IStatusBarService;->toggleRecentApps()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 192
    :catch_0
    move-exception v2

    goto :goto_0

    .line 196
    :cond_2
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/ExtensibleKeyButtonView$4;->this$0:Lcom/android/systemui/statusbar/policy/ExtensibleKeyButtonView;

    iget-object v2, v2, Lcom/android/systemui/statusbar/policy/ExtensibleKeyButtonView;->mClickAction:Ljava/lang/String;

    const-string v3, "**notifications**"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 198
    :try_start_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/ExtensibleKeyButtonView$4;->this$0:Lcom/android/systemui/statusbar/policy/ExtensibleKeyButtonView;

    iget-object v2, v2, Lcom/android/systemui/statusbar/policy/ExtensibleKeyButtonView;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    invoke-interface {v2}, Lcom/android/internal/statusbar/IStatusBarService;->toggleNotificationShade()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 199
    :catch_1
    move-exception v2

    goto :goto_0

    .line 205
    :cond_3
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/ExtensibleKeyButtonView$4;->this$0:Lcom/android/systemui/statusbar/policy/ExtensibleKeyButtonView;

    iget-object v2, v2, Lcom/android/systemui/statusbar/policy/ExtensibleKeyButtonView;->mClickAction:Ljava/lang/String;

    const-string v3, "**kill**"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 207
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/ExtensibleKeyButtonView$4;->this$0:Lcom/android/systemui/statusbar/policy/ExtensibleKeyButtonView;

    iget-object v2, v2, Lcom/android/systemui/statusbar/policy/ExtensibleKeyButtonView;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/ExtensibleKeyButtonView$4;->this$0:Lcom/android/systemui/statusbar/policy/ExtensibleKeyButtonView;

    iget-object v3, v3, Lcom/android/systemui/statusbar/policy/ExtensibleKeyButtonView;->mKillTask:Ljava/lang/Runnable;

    invoke-static {}, Landroid/view/ViewConfiguration;->getGlobalActionKeyTimeout()J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 210
    :cond_4
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/ExtensibleKeyButtonView$4;->this$0:Lcom/android/systemui/statusbar/policy/ExtensibleKeyButtonView;

    iget-object v2, v2, Lcom/android/systemui/statusbar/policy/ExtensibleKeyButtonView;->mClickAction:Ljava/lang/String;

    const-string v3, "**widgets**"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 218
    :try_start_2
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/ExtensibleKeyButtonView$4;->this$0:Lcom/android/systemui/statusbar/policy/ExtensibleKeyButtonView;

    iget-object v2, v2, Lcom/android/systemui/statusbar/policy/ExtensibleKeyButtonView;->mClickAction:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v1

    .line 219
    .local v1, intent:Landroid/content/Intent;
    const/high16 v2, 0x1000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 220
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/ExtensibleKeyButtonView$4;->this$0:Lcom/android/systemui/statusbar/policy/ExtensibleKeyButtonView;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/policy/ExtensibleKeyButtonView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_2
    .catch Ljava/net/URISyntaxException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2 .. :try_end_2} :catch_3

    goto :goto_0

    .line 221
    .end local v1           #intent:Landroid/content/Intent;
    :catch_2
    move-exception v0

    .line 222
    .local v0, e:Ljava/net/URISyntaxException;
    const-string v2, "Key.Ext"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "URISyntaxException: ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/ExtensibleKeyButtonView$4;->this$0:Lcom/android/systemui/statusbar/policy/ExtensibleKeyButtonView;

    iget-object v4, v4, Lcom/android/systemui/statusbar/policy/ExtensibleKeyButtonView;->mClickAction:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 223
    .end local v0           #e:Ljava/net/URISyntaxException;
    :catch_3
    move-exception v0

    .line 224
    .local v0, e:Landroid/content/ActivityNotFoundException;
    const-string v2, "Key.Ext"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ActivityNotFound: ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/ExtensibleKeyButtonView$4;->this$0:Lcom/android/systemui/statusbar/policy/ExtensibleKeyButtonView;

    iget-object v4, v4, Lcom/android/systemui/statusbar/policy/ExtensibleKeyButtonView;->mClickAction:Ljava/lang/String;

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
