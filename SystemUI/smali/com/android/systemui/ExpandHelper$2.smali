.class Lcom/android/systemui/ExpandHelper$2;
.super Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;
.source "ExpandHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/ExpandHelper;-><init>(Landroid/content/Context;Lcom/android/systemui/ExpandHelper$Callback;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/ExpandHelper;


# direct methods
.method constructor <init>(Lcom/android/systemui/ExpandHelper;)V
    .locals 0
    .parameter

    .prologue
    .line 174
    iput-object p1, p0, Lcom/android/systemui/ExpandHelper$2;->this$0:Lcom/android/systemui/ExpandHelper;

    invoke-direct {p0}, Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 14
    .parameter "detector"

    .prologue
    const/high16 v13, 0x3f00

    const/high16 v8, -0x4080

    const/high16 v9, 0x3f80

    .line 206
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getCurrentSpan()F

    move-result v7

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    iget-object v10, p0, Lcom/android/systemui/ExpandHelper$2;->this$0:Lcom/android/systemui/ExpandHelper;

    #getter for: Lcom/android/systemui/ExpandHelper;->mInitialTouchSpan:F
    invoke-static {v10}, Lcom/android/systemui/ExpandHelper;->access$300(Lcom/android/systemui/ExpandHelper;)F

    move-result v10

    sub-float v3, v7, v10

    .line 207
    .local v3, span:F
    mul-float/2addr v3, v9

    .line 208
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusY()F

    move-result v7

    iget-object v10, p0, Lcom/android/systemui/ExpandHelper$2;->this$0:Lcom/android/systemui/ExpandHelper;

    #getter for: Lcom/android/systemui/ExpandHelper;->mInitialTouchFocusY:F
    invoke-static {v10}, Lcom/android/systemui/ExpandHelper;->access$200(Lcom/android/systemui/ExpandHelper;)F

    move-result v10

    sub-float v0, v7, v10

    .line 209
    .local v0, drag:F
    mul-float/2addr v0, v9

    .line 210
    iget-object v7, p0, Lcom/android/systemui/ExpandHelper$2;->this$0:Lcom/android/systemui/ExpandHelper;

    #getter for: Lcom/android/systemui/ExpandHelper;->mGravity:I
    invoke-static {v7}, Lcom/android/systemui/ExpandHelper;->access$600(Lcom/android/systemui/ExpandHelper;)I

    move-result v7

    const/16 v10, 0x50

    if-ne v7, v10, :cond_2

    move v7, v8

    :goto_0
    mul-float/2addr v0, v7

    .line 211
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v7

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v10

    add-float/2addr v7, v10

    add-float v2, v7, v9

    .line 212
    .local v2, pull:F
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v7

    mul-float/2addr v7, v0

    div-float/2addr v7, v2

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v10

    mul-float/2addr v10, v3

    div-float/2addr v10, v2

    add-float v1, v7, v10

    .line 214
    .local v1, hand:F
    iget-object v7, p0, Lcom/android/systemui/ExpandHelper$2;->this$0:Lcom/android/systemui/ExpandHelper;

    #getter for: Lcom/android/systemui/ExpandHelper;->mOldHeight:F
    invoke-static {v7}, Lcom/android/systemui/ExpandHelper;->access$700(Lcom/android/systemui/ExpandHelper;)F

    move-result v7

    add-float/2addr v1, v7

    .line 215
    move v6, v1

    .line 217
    .local v6, target:F
    iget-object v7, p0, Lcom/android/systemui/ExpandHelper$2;->this$0:Lcom/android/systemui/ExpandHelper;

    #getter for: Lcom/android/systemui/ExpandHelper;->mSmallSize:I
    invoke-static {v7}, Lcom/android/systemui/ExpandHelper;->access$800(Lcom/android/systemui/ExpandHelper;)I

    move-result v7

    int-to-float v7, v7

    cmpg-float v7, v1, v7

    if-gez v7, :cond_3

    iget-object v7, p0, Lcom/android/systemui/ExpandHelper$2;->this$0:Lcom/android/systemui/ExpandHelper;

    #getter for: Lcom/android/systemui/ExpandHelper;->mSmallSize:I
    invoke-static {v7}, Lcom/android/systemui/ExpandHelper;->access$800(Lcom/android/systemui/ExpandHelper;)I

    move-result v7

    int-to-float v1, v7

    .line 218
    :cond_0
    :goto_1
    iget-object v7, p0, Lcom/android/systemui/ExpandHelper$2;->this$0:Lcom/android/systemui/ExpandHelper;

    #getter for: Lcom/android/systemui/ExpandHelper;->mNaturalHeight:F
    invoke-static {v7}, Lcom/android/systemui/ExpandHelper;->access$1000(Lcom/android/systemui/ExpandHelper;)F

    move-result v7

    cmpl-float v7, v1, v7

    if-lez v7, :cond_1

    iget-object v7, p0, Lcom/android/systemui/ExpandHelper$2;->this$0:Lcom/android/systemui/ExpandHelper;

    #getter for: Lcom/android/systemui/ExpandHelper;->mNaturalHeight:F
    invoke-static {v7}, Lcom/android/systemui/ExpandHelper;->access$1000(Lcom/android/systemui/ExpandHelper;)F

    move-result v1

    .line 220
    :cond_1
    iget-object v7, p0, Lcom/android/systemui/ExpandHelper$2;->this$0:Lcom/android/systemui/ExpandHelper;

    #getter for: Lcom/android/systemui/ExpandHelper;->mScaler:Lcom/android/systemui/ExpandHelper$ViewScaler;
    invoke-static {v7}, Lcom/android/systemui/ExpandHelper;->access$1100(Lcom/android/systemui/ExpandHelper;)Lcom/android/systemui/ExpandHelper$ViewScaler;

    move-result-object v7

    invoke-virtual {v7, v1}, Lcom/android/systemui/ExpandHelper$ViewScaler;->setHeight(F)V

    .line 223
    sub-float v7, v6, v1

    iget-object v10, p0, Lcom/android/systemui/ExpandHelper$2;->this$0:Lcom/android/systemui/ExpandHelper;

    #getter for: Lcom/android/systemui/ExpandHelper;->mMaximumStretch:F
    invoke-static {v10}, Lcom/android/systemui/ExpandHelper;->access$1200(Lcom/android/systemui/ExpandHelper;)F

    move-result v10

    div-float/2addr v7, v10

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v5

    .line 224
    .local v5, stretch:F
    const-wide v10, 0x4005bf0a8b145769L

    const/high16 v7, 0x4100

    mul-float/2addr v7, v5

    const/high16 v12, 0x40a0

    sub-float/2addr v7, v12

    mul-float/2addr v7, v8

    float-to-double v7, v7

    invoke-static {v10, v11, v7, v8}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v7

    double-to-float v7, v7

    add-float/2addr v7, v9

    div-float v4, v9, v7

    .line 226
    .local v4, strength:F
    iget-object v7, p0, Lcom/android/systemui/ExpandHelper$2;->this$0:Lcom/android/systemui/ExpandHelper;

    mul-float v8, v4, v13

    add-float/2addr v8, v13

    invoke-virtual {v7, v8}, Lcom/android/systemui/ExpandHelper;->setGlow(F)V

    .line 227
    const/4 v7, 0x1

    return v7

    .end local v1           #hand:F
    .end local v2           #pull:F
    .end local v4           #strength:F
    .end local v5           #stretch:F
    .end local v6           #target:F
    :cond_2
    move v7, v9

    .line 210
    goto :goto_0

    .line 217
    .restart local v1       #hand:F
    .restart local v2       #pull:F
    .restart local v6       #target:F
    :cond_3
    iget-object v7, p0, Lcom/android/systemui/ExpandHelper$2;->this$0:Lcom/android/systemui/ExpandHelper;

    #getter for: Lcom/android/systemui/ExpandHelper;->mLargeSize:I
    invoke-static {v7}, Lcom/android/systemui/ExpandHelper;->access$900(Lcom/android/systemui/ExpandHelper;)I

    move-result v7

    int-to-float v7, v7

    cmpl-float v7, v1, v7

    if-lez v7, :cond_0

    iget-object v7, p0, Lcom/android/systemui/ExpandHelper$2;->this$0:Lcom/android/systemui/ExpandHelper;

    #getter for: Lcom/android/systemui/ExpandHelper;->mLargeSize:I
    invoke-static {v7}, Lcom/android/systemui/ExpandHelper;->access$900(Lcom/android/systemui/ExpandHelper;)I

    move-result v7

    int-to-float v1, v7

    goto :goto_1
.end method

.method public onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .locals 6
    .parameter "detector"

    .prologue
    .line 178
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusX()F

    move-result v2

    .line 179
    .local v2, x:F
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusY()F

    move-result v3

    .line 181
    .local v3, y:F
    const/4 v1, 0x0

    .line 182
    .local v1, v:Landroid/view/View;
    iget-object v4, p0, Lcom/android/systemui/ExpandHelper$2;->this$0:Lcom/android/systemui/ExpandHelper;

    #getter for: Lcom/android/systemui/ExpandHelper;->mEventSource:Landroid/view/View;
    invoke-static {v4}, Lcom/android/systemui/ExpandHelper;->access$000(Lcom/android/systemui/ExpandHelper;)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 183
    const/4 v4, 0x2

    new-array v0, v4, [I

    .line 184
    .local v0, location:[I
    iget-object v4, p0, Lcom/android/systemui/ExpandHelper$2;->this$0:Lcom/android/systemui/ExpandHelper;

    #getter for: Lcom/android/systemui/ExpandHelper;->mEventSource:Landroid/view/View;
    invoke-static {v4}, Lcom/android/systemui/ExpandHelper;->access$000(Lcom/android/systemui/ExpandHelper;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 185
    const/4 v4, 0x0

    aget v4, v0, v4

    int-to-float v4, v4

    add-float/2addr v2, v4

    .line 186
    const/4 v4, 0x1

    aget v4, v0, v4

    int-to-float v4, v4

    add-float/2addr v3, v4

    .line 187
    iget-object v4, p0, Lcom/android/systemui/ExpandHelper$2;->this$0:Lcom/android/systemui/ExpandHelper;

    #getter for: Lcom/android/systemui/ExpandHelper;->mCallback:Lcom/android/systemui/ExpandHelper$Callback;
    invoke-static {v4}, Lcom/android/systemui/ExpandHelper;->access$100(Lcom/android/systemui/ExpandHelper;)Lcom/android/systemui/ExpandHelper$Callback;

    move-result-object v4

    invoke-interface {v4, v2, v3}, Lcom/android/systemui/ExpandHelper$Callback;->getChildAtRawPosition(FF)Landroid/view/View;

    move-result-object v1

    .line 193
    .end local v0           #location:[I
    :goto_0
    iget-object v4, p0, Lcom/android/systemui/ExpandHelper$2;->this$0:Lcom/android/systemui/ExpandHelper;

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusY()F

    move-result v5

    #setter for: Lcom/android/systemui/ExpandHelper;->mInitialTouchFocusY:F
    invoke-static {v4, v5}, Lcom/android/systemui/ExpandHelper;->access$202(Lcom/android/systemui/ExpandHelper;F)F

    .line 194
    iget-object v4, p0, Lcom/android/systemui/ExpandHelper$2;->this$0:Lcom/android/systemui/ExpandHelper;

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getCurrentSpan()F

    move-result v5

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    #setter for: Lcom/android/systemui/ExpandHelper;->mInitialTouchSpan:F
    invoke-static {v4, v5}, Lcom/android/systemui/ExpandHelper;->access$302(Lcom/android/systemui/ExpandHelper;F)F

    .line 197
    iget-object v4, p0, Lcom/android/systemui/ExpandHelper$2;->this$0:Lcom/android/systemui/ExpandHelper;

    iget-object v5, p0, Lcom/android/systemui/ExpandHelper$2;->this$0:Lcom/android/systemui/ExpandHelper;

    #calls: Lcom/android/systemui/ExpandHelper;->initScale(Landroid/view/View;)Z
    invoke-static {v5, v1}, Lcom/android/systemui/ExpandHelper;->access$500(Lcom/android/systemui/ExpandHelper;Landroid/view/View;)Z

    move-result v5

    #setter for: Lcom/android/systemui/ExpandHelper;->mStretching:Z
    invoke-static {v4, v5}, Lcom/android/systemui/ExpandHelper;->access$402(Lcom/android/systemui/ExpandHelper;Z)Z

    .line 198
    iget-object v4, p0, Lcom/android/systemui/ExpandHelper$2;->this$0:Lcom/android/systemui/ExpandHelper;

    #getter for: Lcom/android/systemui/ExpandHelper;->mStretching:Z
    invoke-static {v4}, Lcom/android/systemui/ExpandHelper;->access$400(Lcom/android/systemui/ExpandHelper;)Z

    move-result v4

    return v4

    .line 189
    :cond_0
    iget-object v4, p0, Lcom/android/systemui/ExpandHelper$2;->this$0:Lcom/android/systemui/ExpandHelper;

    #getter for: Lcom/android/systemui/ExpandHelper;->mCallback:Lcom/android/systemui/ExpandHelper$Callback;
    invoke-static {v4}, Lcom/android/systemui/ExpandHelper;->access$100(Lcom/android/systemui/ExpandHelper;)Lcom/android/systemui/ExpandHelper$Callback;

    move-result-object v4

    invoke-interface {v4, v2, v3}, Lcom/android/systemui/ExpandHelper$Callback;->getChildAtPosition(FF)Landroid/view/View;

    move-result-object v1

    goto :goto_0
.end method

.method public onScaleEnd(Landroid/view/ScaleGestureDetector;)V
    .locals 2
    .parameter "detector"

    .prologue
    .line 235
    iget-object v0, p0, Lcom/android/systemui/ExpandHelper$2;->this$0:Lcom/android/systemui/ExpandHelper;

    const/4 v1, 0x0

    #calls: Lcom/android/systemui/ExpandHelper;->finishScale(Z)V
    invoke-static {v0, v1}, Lcom/android/systemui/ExpandHelper;->access$1300(Lcom/android/systemui/ExpandHelper;Z)V

    .line 236
    return-void
.end method
