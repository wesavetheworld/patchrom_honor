.class Lcom/android/server/MountService$MountServiceHandler;
.super Landroid/os/Handler;
.source "MountService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/MountService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MountServiceHandler"
.end annotation


# instance fields
.field mForceUnmounts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/MountService$UnmountCallBack;",
            ">;"
        }
    .end annotation
.end field

.field mUpdatingStatus:Z

.field final synthetic this$0:Lcom/android/server/MountService;


# direct methods
.method constructor <init>(Lcom/android/server/MountService;Landroid/os/Looper;)V
    .locals 1
    .parameter
    .parameter "l"

    .prologue
    .line 416
    iput-object p1, p0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    .line 417
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 413
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/MountService$MountServiceHandler;->mForceUnmounts:Ljava/util/ArrayList;

    .line 414
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/MountService$MountServiceHandler;->mUpdatingStatus:Z

    .line 418
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 16
    .parameter "msg"

    .prologue
    .line 422
    move-object/from16 v0, p1

    iget v11, v0, Landroid/os/Message;->what:I

    packed-switch v11, :pswitch_data_0

    .line 496
    :cond_0
    :goto_0
    return-void

    .line 424
    :pswitch_0
    const-string v11, "MountService"

    const-string v12, "H_UNMOUNT_PM_UPDATE"

    invoke-static {v11, v12}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Lcom/android/server/MountService$UnmountCallBack;

    .line 426
    .local v10, ucb:Lcom/android/server/MountService$UnmountCallBack;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/MountService$MountServiceHandler;->mForceUnmounts:Ljava/util/ArrayList;

    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 427
    const-string v11, "MountService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, " registered = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/server/MountService$MountServiceHandler;->mUpdatingStatus:Z

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/android/server/MountService$MountServiceHandler;->mUpdatingStatus:Z

    if-nez v11, :cond_0

    .line 430
    const-string v11, "MountService"

    const-string v12, "Updating external media status on PackageManager"

    invoke-static {v11, v12}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    const/4 v11, 0x1

    move-object/from16 v0, p0

    iput-boolean v11, v0, Lcom/android/server/MountService$MountServiceHandler;->mUpdatingStatus:Z

    .line 432
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    #getter for: Lcom/android/server/MountService;->mPms:Lcom/android/server/pm/PackageManagerService;
    invoke-static {v11}, Lcom/android/server/MountService;->access$300(Lcom/android/server/MountService;)Lcom/android/server/pm/PackageManagerService;

    move-result-object v11

    const/4 v12, 0x0

    const/4 v13, 0x1

    invoke-virtual {v11, v12, v13}, Lcom/android/server/pm/PackageManagerService;->updateExternalMediaStatus(ZZ)V

    goto :goto_0

    .line 437
    .end local v10           #ucb:Lcom/android/server/MountService$UnmountCallBack;
    :pswitch_1
    const-string v11, "MountService"

    const-string v12, "H_UNMOUNT_PM_DONE"

    invoke-static {v11, v12}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    const-string v11, "MountService"

    const-string v12, "Updated status. Processing requests"

    invoke-static {v11, v12}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput-boolean v11, v0, Lcom/android/server/MountService$MountServiceHandler;->mUpdatingStatus:Z

    .line 440
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/MountService$MountServiceHandler;->mForceUnmounts:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 441
    .local v6, size:I
    new-array v7, v6, [I

    .line 442
    .local v7, sizeArr:[I
    const/4 v8, 0x0

    .line 444
    .local v8, sizeArrN:I
    const-string v11, "activity"

    invoke-static {v11}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityManagerService;

    .line 446
    .local v1, ams:Lcom/android/server/am/ActivityManagerService;
    const/4 v3, 0x0

    .local v3, i:I
    move v9, v8

    .end local v8           #sizeArrN:I
    .local v9, sizeArrN:I
    :goto_1
    if-ge v3, v6, :cond_8

    .line 447
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/MountService$MountServiceHandler;->mForceUnmounts:Ljava/util/ArrayList;

    invoke-virtual {v11, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/MountService$UnmountCallBack;

    .line 448
    .restart local v10       #ucb:Lcom/android/server/MountService$UnmountCallBack;
    iget-object v4, v10, Lcom/android/server/MountService$UnmountCallBack;->path:Ljava/lang/String;

    .line 449
    .local v4, path:Ljava/lang/String;
    const/4 v2, 0x0

    .line 450
    .local v2, done:Z
    iget-boolean v11, v10, Lcom/android/server/MountService$UnmountCallBack;->force:Z

    if-nez v11, :cond_2

    .line 451
    const/4 v2, 0x1

    .line 466
    :cond_1
    :goto_2
    if-nez v2, :cond_6

    iget v11, v10, Lcom/android/server/MountService$UnmountCallBack;->retries:I

    const/4 v12, 0x4

    if-ge v11, v12, :cond_6

    .line 468
    const-string v11, "MountService"

    const-string v12, "Retrying to kill storage users again"

    invoke-static {v11, v12}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    #getter for: Lcom/android/server/MountService;->mHandler:Landroid/os/Handler;
    invoke-static {v11}, Lcom/android/server/MountService;->access$400(Lcom/android/server/MountService;)Landroid/os/Handler;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    #getter for: Lcom/android/server/MountService;->mHandler:Landroid/os/Handler;
    invoke-static {v12}, Lcom/android/server/MountService;->access$400(Lcom/android/server/MountService;)Landroid/os/Handler;

    move-result-object v12

    const/4 v13, 0x2

    iget v14, v10, Lcom/android/server/MountService$UnmountCallBack;->retries:I

    add-int/lit8 v15, v14, 0x1

    iput v15, v10, Lcom/android/server/MountService$UnmountCallBack;->retries:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v12

    const-wide/16 v13, 0x1e

    invoke-virtual {v11, v12, v13, v14}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    move v8, v9

    .line 446
    .end local v9           #sizeArrN:I
    .restart local v8       #sizeArrN:I
    :goto_3
    add-int/lit8 v3, v3, 0x1

    move v9, v8

    .end local v8           #sizeArrN:I
    .restart local v9       #sizeArrN:I
    goto :goto_1

    .line 453
    :cond_2
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    invoke-virtual {v11, v4}, Lcom/android/server/MountService;->getStorageUsers(Ljava/lang/String;)[I

    move-result-object v5

    .line 454
    .local v5, pids:[I
    if-eqz v5, :cond_3

    array-length v11, v5

    if-nez v11, :cond_4

    .line 455
    :cond_3
    const/4 v2, 0x1

    goto :goto_2

    .line 458
    :cond_4
    const-string v11, "unmount media"

    const/4 v12, 0x1

    invoke-virtual {v1, v5, v11, v12}, Lcom/android/server/am/ActivityManagerService;->killPids([ILjava/lang/String;Z)Z

    .line 460
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    invoke-virtual {v11, v4}, Lcom/android/server/MountService;->getStorageUsers(Ljava/lang/String;)[I

    move-result-object v5

    .line 461
    if-eqz v5, :cond_5

    array-length v11, v5

    if-nez v11, :cond_1

    .line 462
    :cond_5
    const/4 v2, 0x1

    goto :goto_2

    .line 474
    .end local v5           #pids:[I
    :cond_6
    iget v11, v10, Lcom/android/server/MountService$UnmountCallBack;->retries:I

    const/4 v12, 0x4

    if-lt v11, v12, :cond_7

    .line 475
    const-string v11, "MountService"

    const-string v12, "Failed to unmount media inspite of 4 retries. Forcibly killing processes now"

    invoke-static {v11, v12}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    :cond_7
    add-int/lit8 v8, v9, 0x1

    .end local v9           #sizeArrN:I
    .restart local v8       #sizeArrN:I
    aput v3, v7, v9

    .line 479
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    #getter for: Lcom/android/server/MountService;->mHandler:Landroid/os/Handler;
    invoke-static {v11}, Lcom/android/server/MountService;->access$400(Lcom/android/server/MountService;)Landroid/os/Handler;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    #getter for: Lcom/android/server/MountService;->mHandler:Landroid/os/Handler;
    invoke-static {v12}, Lcom/android/server/MountService;->access$400(Lcom/android/server/MountService;)Landroid/os/Handler;

    move-result-object v12

    const/4 v13, 0x3

    invoke-virtual {v12, v13, v10}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_3

    .line 484
    .end local v2           #done:Z
    .end local v4           #path:Ljava/lang/String;
    .end local v8           #sizeArrN:I
    .end local v10           #ucb:Lcom/android/server/MountService$UnmountCallBack;
    .restart local v9       #sizeArrN:I
    :cond_8
    add-int/lit8 v3, v9, -0x1

    :goto_4
    if-ltz v3, :cond_0

    .line 485
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/MountService$MountServiceHandler;->mForceUnmounts:Ljava/util/ArrayList;

    aget v12, v7, v3

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 484
    add-int/lit8 v3, v3, -0x1

    goto :goto_4

    .line 490
    .end local v1           #ams:Lcom/android/server/am/ActivityManagerService;
    .end local v3           #i:I
    .end local v6           #size:I
    .end local v7           #sizeArr:[I
    .end local v9           #sizeArrN:I
    :pswitch_2
    const-string v11, "MountService"

    const-string v12, "H_UNMOUNT_MS"

    invoke-static {v11, v12}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Lcom/android/server/MountService$UnmountCallBack;

    .line 492
    .restart local v10       #ucb:Lcom/android/server/MountService$UnmountCallBack;
    invoke-virtual {v10}, Lcom/android/server/MountService$UnmountCallBack;->handleFinished()V

    goto/16 :goto_0

    .line 422
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
