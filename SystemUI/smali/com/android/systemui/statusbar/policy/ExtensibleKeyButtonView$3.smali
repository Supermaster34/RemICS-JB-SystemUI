.class Lcom/android/systemui/statusbar/policy/ExtensibleKeyButtonView$3;
.super Ljava/lang/Object;
.source "ExtensibleKeyButtonView.java"

# interfaces
.implements Ljava/lang/Runnable;


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
    .line 135
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/ExtensibleKeyButtonView$3;->this$0:Lcom/android/systemui/statusbar/policy/ExtensibleKeyButtonView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 17

    .prologue
    .line 138
    :try_start_0
    new-instance v8, Landroid/content/Intent;

    const-string v14, "android.intent.action.MAIN"

    invoke-direct {v8, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 139
    .local v8, intent:Landroid/content/Intent;
    const-string v5, "com.android.launcher"

    .line 140
    .local v5, defaultHomePackage:Ljava/lang/String;
    const-string v14, "android.intent.category.HOME"

    invoke-virtual {v8, v14}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 141
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/policy/ExtensibleKeyButtonView$3;->this$0:Lcom/android/systemui/statusbar/policy/ExtensibleKeyButtonView;

    #getter for: Lcom/android/systemui/statusbar/policy/ExtensibleKeyButtonView;->mContext:Landroid/content/Context;
    invoke-static {v14}, Lcom/android/systemui/statusbar/policy/ExtensibleKeyButtonView;->access$000(Lcom/android/systemui/statusbar/policy/ExtensibleKeyButtonView;)Landroid/content/Context;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v14

    const/4 v15, 0x0

    invoke-virtual {v14, v8, v15}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v11

    .line 142
    .local v11, res:Landroid/content/pm/ResolveInfo;
    iget-object v14, v11, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v14, :cond_0

    iget-object v14, v11, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v14, v14, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const-string v15, "android"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_0

    .line 143
    iget-object v14, v11, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v14, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 145
    :cond_0
    const/4 v12, 0x0

    .line 146
    .local v12, targetKilled:Z
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    .line 147
    .local v1, am:Landroid/app/IActivityManager;
    invoke-interface {v1}, Landroid/app/IActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v3

    .line 148
    .local v3, apps:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 149
    .local v2, appInfo:Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget v13, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->uid:I

    .line 152
    .local v13, uid:I
    const/16 v14, 0x2710

    if-lt v13, v14, :cond_2

    const/16 v14, 0x4e1f

    if-gt v13, v14, :cond_2

    iget v14, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v15, 0x64

    if-ne v14, v15, :cond_2

    .line 154
    iget-object v14, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    if-eqz v14, :cond_5

    iget-object v14, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    array-length v14, v14

    if-lez v14, :cond_5

    .line 155
    iget-object v4, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    .local v4, arr$:[Ljava/lang/String;
    array-length v9, v4

    .local v9, len$:I
    const/4 v7, 0x0

    .local v7, i$:I
    :goto_0
    if-ge v7, v9, :cond_2

    aget-object v10, v4, v7

    .line 156
    .local v10, pkg:Ljava/lang/String;
    const-string v14, "com.android.systemui"

    invoke-virtual {v10, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_4

    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_4

    .line 157
    invoke-interface {v1, v10}, Landroid/app/IActivityManager;->forceStopPackage(Ljava/lang/String;)V

    .line 158
    const/4 v12, 0x1

    .line 167
    .end local v4           #arr$:[Ljava/lang/String;
    .end local v7           #i$:I
    .end local v9           #len$:I
    .end local v10           #pkg:Ljava/lang/String;
    :cond_2
    :goto_1
    if-eqz v12, :cond_1

    .line 168
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/policy/ExtensibleKeyButtonView$3;->this$0:Lcom/android/systemui/statusbar/policy/ExtensibleKeyButtonView;

    #getter for: Lcom/android/systemui/statusbar/policy/ExtensibleKeyButtonView;->mContext:Landroid/content/Context;
    invoke-static {v14}, Lcom/android/systemui/statusbar/policy/ExtensibleKeyButtonView;->access$100(Lcom/android/systemui/statusbar/policy/ExtensibleKeyButtonView;)Landroid/content/Context;

    move-result-object v14

    const v15, 0x7f090089

    const/16 v16, 0x0

    invoke-static/range {v14 .. v16}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v14

    invoke-virtual {v14}, Landroid/widget/Toast;->show()V

    .line 175
    .end local v1           #am:Landroid/app/IActivityManager;
    .end local v2           #appInfo:Landroid/app/ActivityManager$RunningAppProcessInfo;
    .end local v3           #apps:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    .end local v5           #defaultHomePackage:Ljava/lang/String;
    .end local v8           #intent:Landroid/content/Intent;
    .end local v11           #res:Landroid/content/pm/ResolveInfo;
    .end local v12           #targetKilled:Z
    .end local v13           #uid:I
    :cond_3
    :goto_2
    return-void

    .line 155
    .restart local v1       #am:Landroid/app/IActivityManager;
    .restart local v2       #appInfo:Landroid/app/ActivityManager$RunningAppProcessInfo;
    .restart local v3       #apps:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    .restart local v4       #arr$:[Ljava/lang/String;
    .restart local v5       #defaultHomePackage:Ljava/lang/String;
    .restart local v7       #i$:I
    .restart local v8       #intent:Landroid/content/Intent;
    .restart local v9       #len$:I
    .restart local v10       #pkg:Ljava/lang/String;
    .restart local v11       #res:Landroid/content/pm/ResolveInfo;
    .restart local v12       #targetKilled:Z
    .restart local v13       #uid:I
    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 163
    .end local v4           #arr$:[Ljava/lang/String;
    .end local v7           #i$:I
    .end local v9           #len$:I
    .end local v10           #pkg:Ljava/lang/String;
    :cond_5
    iget v14, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    invoke-static {v14}, Landroid/os/Process;->killProcess(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 164
    const/4 v12, 0x1

    goto :goto_1

    .line 172
    .end local v1           #am:Landroid/app/IActivityManager;
    .end local v2           #appInfo:Landroid/app/ActivityManager$RunningAppProcessInfo;
    .end local v3           #apps:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    .end local v5           #defaultHomePackage:Ljava/lang/String;
    .end local v8           #intent:Landroid/content/Intent;
    .end local v11           #res:Landroid/content/pm/ResolveInfo;
    .end local v12           #targetKilled:Z
    .end local v13           #uid:I
    :catch_0
    move-exception v14

    goto :goto_2
.end method
