.class Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoStubImpl;
.super Ljava/lang/Object;
.source "AccessibilityNodeInfoCompat.java"

# interfaces
.implements Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AccessibilityNodeInfoStubImpl"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 284
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addAction(Ljava/lang/Object;I)V
    .locals 0
    .parameter "info"
    .parameter "action"

    .prologue
    .line 313
    return-void
.end method

.method public addAction(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .parameter "info"
    .parameter "action"

    .prologue
    .line 318
    return-void
.end method

.method public addChild(Ljava/lang/Object;Landroid/view/View;)V
    .locals 0
    .parameter "info"
    .parameter "child"

    .prologue
    .line 333
    return-void
.end method

.method public addChild(Ljava/lang/Object;Landroid/view/View;I)V
    .locals 0
    .parameter "info"
    .parameter "child"
    .parameter "virtualDescendantId"

    .prologue
    .line 338
    return-void
.end method

.method public findAccessibilityNodeInfosByText(Ljava/lang/Object;Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .parameter "info"
    .parameter "text"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 342
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public findFocus(Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 1
    .parameter "info"
    .parameter "focus"

    .prologue
    .line 582
    const/4 v0, 0x0

    return-object v0
.end method

.method public focusSearch(Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 1
    .parameter "info"
    .parameter "direction"

    .prologue
    .line 587
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAccessibilityActionId(Ljava/lang/Object;)I
    .locals 1
    .parameter "action"

    .prologue
    .line 322
    const/4 v0, 0x0

    return v0
.end method

.method public getAccessibilityActionLabel(Ljava/lang/Object;)Ljava/lang/CharSequence;
    .locals 1
    .parameter "action"

    .prologue
    .line 327
    const/4 v0, 0x0

    return-object v0
.end method

.method public getActionList(Ljava/lang/Object;)Ljava/util/List;
    .locals 1
    .parameter "info"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 650
    const/4 v0, 0x0

    return-object v0
.end method

.method public getActions(Ljava/lang/Object;)I
    .locals 1
    .parameter "info"

    .prologue
    .line 347
    const/4 v0, 0x0

    return v0
.end method

.method public getBoundsInParent(Ljava/lang/Object;Landroid/graphics/Rect;)V
    .locals 0
    .parameter "info"
    .parameter "outBounds"

    .prologue
    .line 353
    return-void
.end method

.method public getBoundsInScreen(Ljava/lang/Object;Landroid/graphics/Rect;)V
    .locals 0
    .parameter "info"
    .parameter "outBounds"

    .prologue
    .line 358
    return-void
.end method

.method public getChild(Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 1
    .parameter "info"
    .parameter "index"

    .prologue
    .line 362
    const/4 v0, 0x0

    return-object v0
.end method

.method public getChildCount(Ljava/lang/Object;)I
    .locals 1
    .parameter "info"

    .prologue
    .line 367
    const/4 v0, 0x0

    return v0
.end method

.method public getClassName(Ljava/lang/Object;)Ljava/lang/CharSequence;
    .locals 1
    .parameter "info"

    .prologue
    .line 372
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCollectionInfo(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "info"

    .prologue
    .line 627
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCollectionInfoColumnCount(Ljava/lang/Object;)I
    .locals 1
    .parameter "info"

    .prologue
    .line 661
    const/4 v0, 0x0

    return v0
.end method

.method public getCollectionInfoRowCount(Ljava/lang/Object;)I
    .locals 1
    .parameter "info"

    .prologue
    .line 666
    const/4 v0, 0x0

    return v0
.end method

.method public getCollectionItemColumnIndex(Ljava/lang/Object;)I
    .locals 1
    .parameter "info"

    .prologue
    .line 682
    const/4 v0, 0x0

    return v0
.end method

.method public getCollectionItemColumnSpan(Ljava/lang/Object;)I
    .locals 1
    .parameter "info"

    .prologue
    .line 687
    const/4 v0, 0x0

    return v0
.end method

.method public getCollectionItemInfo(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "info"

    .prologue
    .line 636
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCollectionItemRowIndex(Ljava/lang/Object;)I
    .locals 1
    .parameter "info"

    .prologue
    .line 692
    const/4 v0, 0x0

    return v0
.end method

.method public getCollectionItemRowSpan(Ljava/lang/Object;)I
    .locals 1
    .parameter "info"

    .prologue
    .line 697
    const/4 v0, 0x0

    return v0
.end method

.method public getContentDescription(Ljava/lang/Object;)Ljava/lang/CharSequence;
    .locals 1
    .parameter "info"

    .prologue
    .line 377
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLiveRegion(Ljava/lang/Object;)I
    .locals 1
    .parameter "info"

    .prologue
    .line 617
    const/4 v0, 0x0

    return v0
.end method

.method public getMovementGranularities(Ljava/lang/Object;)I
    .locals 1
    .parameter "info"

    .prologue
    .line 477
    const/4 v0, 0x0

    return v0
.end method

.method public getPackageName(Ljava/lang/Object;)Ljava/lang/CharSequence;
    .locals 1
    .parameter "info"

    .prologue
    .line 382
    const/4 v0, 0x0

    return-object v0
.end method

.method public getParent(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "info"

    .prologue
    .line 387
    const/4 v0, 0x0

    return-object v0
.end method

.method public getRangeInfo(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "info"

    .prologue
    .line 645
    const/4 v0, 0x0

    return-object v0
.end method

.method public getText(Ljava/lang/Object;)Ljava/lang/CharSequence;
    .locals 1
    .parameter "info"

    .prologue
    .line 392
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTraversalAfter(Ljava/lang/Object;)Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;
    .locals 1
    .parameter "info"

    .prologue
    .line 725
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTraversalBefore(Ljava/lang/Object;)Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;
    .locals 1
    .parameter "info"

    .prologue
    .line 712
    const/4 v0, 0x0

    return-object v0
.end method

.method public getViewIdResourceName(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .parameter "info"

    .prologue
    .line 607
    const/4 v0, 0x0

    return-object v0
.end method

.method public getWindowId(Ljava/lang/Object;)I
    .locals 1
    .parameter "info"

    .prologue
    .line 397
    const/4 v0, 0x0

    return v0
.end method

.method public isAccessibilityFocused(Ljava/lang/Object;)Z
    .locals 1
    .parameter "info"

    .prologue
    .line 437
    const/4 v0, 0x0

    return v0
.end method

.method public isCheckable(Ljava/lang/Object;)Z
    .locals 1
    .parameter "info"

    .prologue
    .line 402
    const/4 v0, 0x0

    return v0
.end method

.method public isChecked(Ljava/lang/Object;)Z
    .locals 1
    .parameter "info"

    .prologue
    .line 407
    const/4 v0, 0x0

    return v0
.end method

.method public isClickable(Ljava/lang/Object;)Z
    .locals 1
    .parameter "info"

    .prologue
    .line 412
    const/4 v0, 0x0

    return v0
.end method

.method public isCollectionInfoHierarchical(Ljava/lang/Object;)Z
    .locals 1
    .parameter "info"

    .prologue
    .line 671
    const/4 v0, 0x0

    return v0
.end method

.method public isCollectionItemHeading(Ljava/lang/Object;)Z
    .locals 1
    .parameter "info"

    .prologue
    .line 702
    const/4 v0, 0x0

    return v0
.end method

.method public isCollectionItemSelected(Ljava/lang/Object;)Z
    .locals 1
    .parameter "info"

    .prologue
    .line 707
    const/4 v0, 0x0

    return v0
.end method

.method public isEnabled(Ljava/lang/Object;)Z
    .locals 1
    .parameter "info"

    .prologue
    .line 417
    const/4 v0, 0x0

    return v0
.end method

.method public isFocusable(Ljava/lang/Object;)Z
    .locals 1
    .parameter "info"

    .prologue
    .line 422
    const/4 v0, 0x0

    return v0
.end method

.method public isFocused(Ljava/lang/Object;)Z
    .locals 1
    .parameter "info"

    .prologue
    .line 427
    const/4 v0, 0x0

    return v0
.end method

.method public isLongClickable(Ljava/lang/Object;)Z
    .locals 1
    .parameter "info"

    .prologue
    .line 442
    const/4 v0, 0x0

    return v0
.end method

.method public isPassword(Ljava/lang/Object;)Z
    .locals 1
    .parameter "info"

    .prologue
    .line 447
    const/4 v0, 0x0

    return v0
.end method

.method public isScrollable(Ljava/lang/Object;)Z
    .locals 1
    .parameter "info"

    .prologue
    .line 452
    const/4 v0, 0x0

    return v0
.end method

.method public isSelected(Ljava/lang/Object;)Z
    .locals 1
    .parameter "info"

    .prologue
    .line 457
    const/4 v0, 0x0

    return v0
.end method

.method public isVisibleToUser(Ljava/lang/Object;)Z
    .locals 1
    .parameter "info"

    .prologue
    .line 432
    const/4 v0, 0x0

    return v0
.end method

.method public newAccessibilityAction(ILjava/lang/CharSequence;)Ljava/lang/Object;
    .locals 1
    .parameter "actionId"
    .parameter "label"

    .prologue
    .line 287
    const/4 v0, 0x0

    return-object v0
.end method

.method public obtain()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 292
    const/4 v0, 0x0

    return-object v0
.end method

.method public obtain(Landroid/view/View;)Ljava/lang/Object;
    .locals 1
    .parameter "source"

    .prologue
    .line 297
    const/4 v0, 0x0

    return-object v0
.end method

.method public obtain(Landroid/view/View;I)Ljava/lang/Object;
    .locals 1
    .parameter "root"
    .parameter "virtualDescendantId"

    .prologue
    .line 302
    const/4 v0, 0x0

    return-object v0
.end method

.method public obtain(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "info"

    .prologue
    .line 307
    const/4 v0, 0x0

    return-object v0
.end method

.method public obtainCollectionInfo(IIZI)Ljava/lang/Object;
    .locals 1
    .parameter "rowCount"
    .parameter "columnCount"
    .parameter "hierarchical"
    .parameter "selectionMode"

    .prologue
    .line 656
    const/4 v0, 0x0

    return-object v0
.end method

.method public obtainCollectionItemInfo(IIIIZZ)Ljava/lang/Object;
    .locals 1
    .parameter "rowIndex"
    .parameter "rowSpan"
    .parameter "columnIndex"
    .parameter "columnSpan"
    .parameter "heading"
    .parameter "selected"

    .prologue
    .line 677
    const/4 v0, 0x0

    return-object v0
.end method

.method public performAction(Ljava/lang/Object;I)Z
    .locals 1
    .parameter "info"
    .parameter "action"

    .prologue
    .line 462
    const/4 v0, 0x0

    return v0
.end method

.method public performAction(Ljava/lang/Object;ILandroid/os/Bundle;)Z
    .locals 1
    .parameter "info"
    .parameter "action"
    .parameter "arguments"

    .prologue
    .line 467
    const/4 v0, 0x0

    return v0
.end method

.method public recycle(Ljava/lang/Object;)V
    .locals 0
    .parameter "info"

    .prologue
    .line 598
    return-void
.end method

.method public setAccessibilityFocused(Ljava/lang/Object;Z)V
    .locals 0
    .parameter "info"
    .parameter "focused"

    .prologue
    .line 538
    return-void
.end method

.method public setBoundsInParent(Ljava/lang/Object;Landroid/graphics/Rect;)V
    .locals 0
    .parameter "info"
    .parameter "bounds"

    .prologue
    .line 483
    return-void
.end method

.method public setBoundsInScreen(Ljava/lang/Object;Landroid/graphics/Rect;)V
    .locals 0
    .parameter "info"
    .parameter "bounds"

    .prologue
    .line 488
    return-void
.end method

.method public setCheckable(Ljava/lang/Object;Z)V
    .locals 0
    .parameter "info"
    .parameter "checkable"

    .prologue
    .line 493
    return-void
.end method

.method public setChecked(Ljava/lang/Object;Z)V
    .locals 0
    .parameter "info"
    .parameter "checked"

    .prologue
    .line 498
    return-void
.end method

.method public setClassName(Ljava/lang/Object;Ljava/lang/CharSequence;)V
    .locals 0
    .parameter "info"
    .parameter "className"

    .prologue
    .line 503
    return-void
.end method

.method public setClickable(Ljava/lang/Object;Z)V
    .locals 0
    .parameter "info"
    .parameter "clickable"

    .prologue
    .line 508
    return-void
.end method

.method public setCollectionInfo(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .parameter "info"
    .parameter "collectionInfo"

    .prologue
    .line 632
    return-void
.end method

.method public setCollectionItemInfo(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .parameter "info"
    .parameter "collectionItemInfo"

    .prologue
    .line 641
    return-void
.end method

.method public setContentDescription(Ljava/lang/Object;Ljava/lang/CharSequence;)V
    .locals 0
    .parameter "info"
    .parameter "contentDescription"

    .prologue
    .line 513
    return-void
.end method

.method public setEnabled(Ljava/lang/Object;Z)V
    .locals 0
    .parameter "info"
    .parameter "enabled"

    .prologue
    .line 518
    return-void
.end method

.method public setFocusable(Ljava/lang/Object;Z)V
    .locals 0
    .parameter "info"
    .parameter "focusable"

    .prologue
    .line 523
    return-void
.end method

.method public setFocused(Ljava/lang/Object;Z)V
    .locals 0
    .parameter "info"
    .parameter "focused"

    .prologue
    .line 528
    return-void
.end method

.method public setLiveRegion(Ljava/lang/Object;I)V
    .locals 0
    .parameter "info"
    .parameter "mode"

    .prologue
    .line 623
    return-void
.end method

.method public setLongClickable(Ljava/lang/Object;Z)V
    .locals 0
    .parameter "info"
    .parameter "longClickable"

    .prologue
    .line 543
    return-void
.end method

.method public setMovementGranularities(Ljava/lang/Object;I)V
    .locals 0
    .parameter "info"
    .parameter "granularities"

    .prologue
    .line 473
    return-void
.end method

.method public setPackageName(Ljava/lang/Object;Ljava/lang/CharSequence;)V
    .locals 0
    .parameter "info"
    .parameter "packageName"

    .prologue
    .line 548
    return-void
.end method

.method public setParent(Ljava/lang/Object;Landroid/view/View;)V
    .locals 0
    .parameter "info"
    .parameter "parent"

    .prologue
    .line 553
    return-void
.end method

.method public setParent(Ljava/lang/Object;Landroid/view/View;I)V
    .locals 0
    .parameter "info"
    .parameter "root"
    .parameter "virtualDescendantId"

    .prologue
    .line 603
    return-void
.end method

.method public setPassword(Ljava/lang/Object;Z)V
    .locals 0
    .parameter "info"
    .parameter "password"

    .prologue
    .line 558
    return-void
.end method

.method public setScrollable(Ljava/lang/Object;Z)V
    .locals 0
    .parameter "info"
    .parameter "scrollable"

    .prologue
    .line 563
    return-void
.end method

.method public setSelected(Ljava/lang/Object;Z)V
    .locals 0
    .parameter "info"
    .parameter "selected"

    .prologue
    .line 568
    return-void
.end method

.method public setSource(Ljava/lang/Object;Landroid/view/View;)V
    .locals 0
    .parameter "info"
    .parameter "source"

    .prologue
    .line 573
    return-void
.end method

.method public setSource(Ljava/lang/Object;Landroid/view/View;I)V
    .locals 0
    .parameter "info"
    .parameter "root"
    .parameter "virtualDescendantId"

    .prologue
    .line 578
    return-void
.end method

.method public setText(Ljava/lang/Object;Ljava/lang/CharSequence;)V
    .locals 0
    .parameter "info"
    .parameter "text"

    .prologue
    .line 593
    return-void
.end method

.method public setTraversalAfter(Ljava/lang/Object;Landroid/view/View;)V
    .locals 0
    .parameter "info"
    .parameter "view"

    .prologue
    .line 730
    return-void
.end method

.method public setTraversalAfter(Ljava/lang/Object;Landroid/view/View;I)V
    .locals 0
    .parameter "info"
    .parameter "root"
    .parameter "virtualDescendantId"

    .prologue
    .line 734
    return-void
.end method

.method public setTraversalBefore(Ljava/lang/Object;Landroid/view/View;)V
    .locals 0
    .parameter "info"
    .parameter "view"

    .prologue
    .line 717
    return-void
.end method

.method public setTraversalBefore(Ljava/lang/Object;Landroid/view/View;I)V
    .locals 0
    .parameter "info"
    .parameter "root"
    .parameter "virtualDescendantId"

    .prologue
    .line 721
    return-void
.end method

.method public setViewIdResourceName(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0
    .parameter "info"
    .parameter "viewId"

    .prologue
    .line 613
    return-void
.end method

.method public setVisibleToUser(Ljava/lang/Object;Z)V
    .locals 0
    .parameter "info"
    .parameter "visibleToUser"

    .prologue
    .line 533
    return-void
.end method
