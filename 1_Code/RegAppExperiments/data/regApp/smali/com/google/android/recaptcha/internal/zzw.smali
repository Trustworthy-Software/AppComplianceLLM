.class public final Lcom/google/android/recaptcha/internal/zzw;
.super Ljava/lang/Object;
.source "com.google.android.recaptcha:recaptcha@@18.1.2"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic zzb(Lcom/google/android/recaptcha/internal/zzw;Landroid/app/Application;Ljava/lang/String;Lcom/google/android/recaptcha/internal/zzr;Landroid/webkit/WebView;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lkotlinx/coroutines/TimeoutCancellationException;,
            Lcom/google/android/gms/common/api/ApiException;
        }
    .end annotation

    .line 1
    new-instance p3, Lcom/google/android/recaptcha/internal/zzr;

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    const/4 v6, 0x7

    const/4 v7, 0x0

    move-object v0, p3

    invoke-direct/range {v0 .. v7}, Lcom/google/android/recaptcha/internal/zzr;-><init>(Ljava/lang/String;JJILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/4 v4, 0x0

    .line 2
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/recaptcha/internal/zzw;->zza(Landroid/app/Application;Ljava/lang/String;Lcom/google/android/recaptcha/internal/zzr;Landroid/webkit/WebView;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final zza(Landroid/app/Application;Ljava/lang/String;Lcom/google/android/recaptcha/internal/zzr;Landroid/webkit/WebView;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lkotlinx/coroutines/TimeoutCancellationException;,
            Lcom/google/android/gms/common/api/ApiException;
        }
    .end annotation

    move-object/from16 v0, p5

    instance-of v1, v0, Lcom/google/android/recaptcha/internal/zzv;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lcom/google/android/recaptcha/internal/zzv;

    .line 1
    iget v2, v1, Lcom/google/android/recaptcha/internal/zzv;->zzg:I

    const/high16 v3, -0x80000000

    and-int v4, v2, v3

    if-eqz v4, :cond_0

    sub-int/2addr v2, v3

    iput v2, v1, Lcom/google/android/recaptcha/internal/zzv;->zzg:I

    move-object/from16 v2, p0

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/google/android/recaptcha/internal/zzv;

    move-object/from16 v2, p0

    invoke-direct {v1, v2, v0}, Lcom/google/android/recaptcha/internal/zzv;-><init>(Lcom/google/android/recaptcha/internal/zzw;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object v0, v1, Lcom/google/android/recaptcha/internal/zzv;->zze:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v3

    iget v4, v1, Lcom/google/android/recaptcha/internal/zzv;->zzg:I

    const/4 v5, 0x1

    const/4 v6, 0x0

    packed-switch v4, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    iget-object v3, v1, Lcom/google/android/recaptcha/internal/zzv;->zzb:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Throwable;

    iget-object v1, v1, Lcom/google/android/recaptcha/internal/zzv;->zza:Ljava/lang/Object;

    check-cast v1, Lkotlinx/coroutines/sync/Mutex;

    :try_start_0
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_9

    .line 22
    :catchall_0
    move-exception v0

    goto/16 :goto_a

    .line 21
    :pswitch_1
    iget-object v4, v1, Lcom/google/android/recaptcha/internal/zzv;->zzd:Ljava/lang/Object;

    .line 1
    check-cast v4, Lcom/google/android/recaptcha/internal/zzda;

    iget-object v7, v1, Lcom/google/android/recaptcha/internal/zzv;->zzc:Ljava/lang/Object;

    check-cast v7, Lkotlinx/coroutines/sync/Mutex;

    iget-object v8, v1, Lcom/google/android/recaptcha/internal/zzv;->zzb:Ljava/lang/Object;

    check-cast v8, Lcom/google/android/recaptcha/internal/zzr;

    iget-object v9, v1, Lcom/google/android/recaptcha/internal/zzv;->zza:Ljava/lang/Object;

    check-cast v9, Landroid/app/Application;

    :try_start_1
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    check-cast v0, Lkotlin/Result;

    invoke-virtual {v0}, Lkotlin/Result;->unbox-impl()Ljava/lang/Object;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto/16 :goto_5

    .line 22
    :catchall_1
    move-exception v0

    move-object v1, v7

    goto/16 :goto_a

    .line 1
    :pswitch_2
    iget-object v4, v1, Lcom/google/android/recaptcha/internal/zzv;->zzd:Ljava/lang/Object;

    check-cast v4, Lkotlinx/coroutines/sync/Mutex;

    iget-object v7, v1, Lcom/google/android/recaptcha/internal/zzv;->zzh:Lcom/google/android/recaptcha/internal/zzw;

    check-cast v7, Landroid/webkit/WebView;

    iget-object v8, v1, Lcom/google/android/recaptcha/internal/zzv;->zzc:Ljava/lang/Object;

    check-cast v8, Lcom/google/android/recaptcha/internal/zzr;

    iget-object v9, v1, Lcom/google/android/recaptcha/internal/zzv;->zzb:Ljava/lang/Object;

    check-cast v9, Ljava/lang/String;

    iget-object v10, v1, Lcom/google/android/recaptcha/internal/zzv;->zza:Ljava/lang/Object;

    check-cast v10, Landroid/app/Application;

    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v0, v7

    move-object v7, v4

    move-object v4, v10

    goto :goto_1

    :pswitch_3
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 2
    invoke-static {}, Lcom/google/android/recaptcha/internal/zzaa;->zze()Lkotlinx/coroutines/sync/Mutex;

    move-result-object v0

    move-object/from16 v4, p1

    iput-object v4, v1, Lcom/google/android/recaptcha/internal/zzv;->zza:Ljava/lang/Object;

    move-object/from16 v7, p2

    iput-object v7, v1, Lcom/google/android/recaptcha/internal/zzv;->zzb:Ljava/lang/Object;

    move-object/from16 v8, p3

    iput-object v8, v1, Lcom/google/android/recaptcha/internal/zzv;->zzc:Ljava/lang/Object;

    iput-object v6, v1, Lcom/google/android/recaptcha/internal/zzv;->zzh:Lcom/google/android/recaptcha/internal/zzw;

    iput-object v0, v1, Lcom/google/android/recaptcha/internal/zzv;->zzd:Ljava/lang/Object;

    iput v5, v1, Lcom/google/android/recaptcha/internal/zzv;->zzg:I

    .line 3
    invoke-interface {v0, v6, v1}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v9

    if-eq v9, v3, :cond_c

    move-object v9, v7

    move-object v7, v0

    move-object v0, v6

    :goto_1
    :try_start_2
    const-string v10, "android.permission.INTERNET"

    .line 4
    invoke-static {v4, v10}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v10

    const/4 v15, 0x2

    if-nez v10, :cond_b

    .line 5
    invoke-static {}, Lcom/google/android/recaptcha/internal/zzaa;->zza()Lcom/google/android/recaptcha/internal/zzaa;

    move-result-object v10

    if-eqz v10, :cond_1

    goto/16 :goto_8

    .line 18
    :cond_1
    sget-object v14, Lcom/google/android/recaptcha/internal/zzaa;->zza:Lcom/google/android/recaptcha/internal/zzw;

    .line 6
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/google/android/recaptcha/internal/zzaa;->zzg(Ljava/lang/String;)V

    .line 7
    sget-object v10, Lcom/google/android/recaptcha/internal/zzai;->zza:Lcom/google/android/recaptcha/internal/zzai;

    new-instance v10, Lcom/google/android/recaptcha/internal/zzaf;

    .line 8
    sget-object v17, Lcom/google/android/recaptcha/internal/zzkw;->zze:Lcom/google/android/recaptcha/internal/zzkw;

    invoke-static {}, Lcom/google/android/recaptcha/internal/zzaa;->zzc()Ljava/lang/String;

    move-result-object v18

    invoke-static {}, Lcom/google/android/recaptcha/internal/zzaa;->zzd()Ljava/lang/String;

    move-result-object v11

    if-nez v11, :cond_2

    move-object/from16 v19, v6

    goto :goto_2

    :cond_2
    move-object/from16 v19, v11

    :goto_2
    invoke-static {}, Lcom/google/android/recaptcha/internal/zzaa;->zzd()Ljava/lang/String;

    move-result-object v11

    if-nez v11, :cond_3

    move-object/from16 v20, v6

    goto :goto_3

    :cond_3
    move-object/from16 v20, v11

    :goto_3
    const/16 v21, 0x0

    move-object/from16 v16, v10

    invoke-direct/range {v16 .. v21}, Lcom/google/android/recaptcha/internal/zzaf;-><init>(Lcom/google/android/recaptcha/internal/zzkw;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v11, Lcom/google/android/recaptcha/internal/zzs;

    invoke-direct {v11}, Lcom/google/android/recaptcha/internal/zzs;-><init>()V

    .line 7
    invoke-static {v10, v9, v11}, Lcom/google/android/recaptcha/internal/zzai;->zzb(Lcom/google/android/recaptcha/internal/zzaf;Ljava/lang/String;Lcom/google/android/recaptcha/internal/zzs;)V

    new-instance v13, Lcom/google/android/recaptcha/internal/zzda;

    if-nez v0, :cond_4

    .line 9
    new-instance v0, Landroid/webkit/WebView;

    invoke-direct {v0, v4}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    :cond_4
    invoke-static {}, Lcom/google/android/recaptcha/internal/zzaa;->zzc()Ljava/lang/String;

    move-result-object v16

    invoke-static {}, Lcom/google/android/recaptcha/internal/zzaa;->zzd()Ljava/lang/String;

    move-result-object v10

    if-nez v10, :cond_5

    move-object/from16 v17, v6

    goto :goto_4

    :cond_5
    move-object/from16 v17, v10

    :goto_4
    new-instance v18, Lcom/google/android/recaptcha/internal/zzao;

    new-instance v12, Lcom/google/android/recaptcha/internal/zzaq;

    .line 10
    invoke-virtual {v8}, Lcom/google/android/recaptcha/internal/zzr;->zzc()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v12, v10}, Lcom/google/android/recaptcha/internal/zzaq;-><init>(Ljava/lang/String;)V

    const/16 v19, 0x0

    const/16 v20, 0x4

    const/16 v21, 0x0

    move-object/from16 v10, v18

    move-object v11, v4

    move-object/from16 p1, v13

    move-object/from16 v13, v19

    move-object v5, v14

    move/from16 v14, v20

    move v6, v15

    move-object/from16 v15, v21

    invoke-direct/range {v10 .. v15}, Lcom/google/android/recaptcha/internal/zzao;-><init>(Landroid/content/Context;Lcom/google/android/recaptcha/internal/zzap;Lkotlinx/coroutines/CoroutineScope;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 11
    sget-object v10, Lcom/google/android/recaptcha/internal/zzp;->zza:Lcom/google/android/recaptcha/internal/zzp;

    invoke-static {}, Lcom/google/android/recaptcha/internal/zzp;->zzb()Lkotlinx/coroutines/CoroutineScope;

    move-result-object v19

    .line 12
    move-object/from16 v10, p1

    move-object v11, v0

    move-object v12, v9

    move-object v13, v4

    move-object v14, v8

    move-object/from16 v15, v16

    move-object/from16 v16, v17

    move-object/from16 v17, v18

    move-object/from16 v18, v19

    invoke-direct/range {v10 .. v18}, Lcom/google/android/recaptcha/internal/zzda;-><init>(Landroid/webkit/WebView;Ljava/lang/String;Landroid/content/Context;Lcom/google/android/recaptcha/internal/zzr;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/recaptcha/internal/zzaj;Lkotlinx/coroutines/CoroutineScope;)V

    iput-object v4, v1, Lcom/google/android/recaptcha/internal/zzv;->zza:Ljava/lang/Object;

    iput-object v8, v1, Lcom/google/android/recaptcha/internal/zzv;->zzb:Ljava/lang/Object;

    iput-object v7, v1, Lcom/google/android/recaptcha/internal/zzv;->zzc:Ljava/lang/Object;

    iput-object v5, v1, Lcom/google/android/recaptcha/internal/zzv;->zzh:Lcom/google/android/recaptcha/internal/zzw;

    move-object/from16 v0, p1

    iput-object v0, v1, Lcom/google/android/recaptcha/internal/zzv;->zzd:Ljava/lang/Object;

    iput v6, v1, Lcom/google/android/recaptcha/internal/zzv;->zzg:I

    .line 13
    invoke-virtual {v0, v1}, Lcom/google/android/recaptcha/internal/zzda;->zzg(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-eq v5, v3, :cond_a

    move-object v9, v4

    move-object v4, v0

    move-object v0, v5

    :goto_5
    :try_start_3
    invoke-static {v0}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_8

    .line 14
    new-instance v10, Lcom/google/android/recaptcha/internal/zzaa;

    invoke-direct {v10, v4}, Lcom/google/android/recaptcha/internal/zzaa;-><init>(Lcom/google/android/recaptcha/internal/zzda;)V

    .line 15
    sget-object v0, Lcom/google/android/recaptcha/internal/zzai;->zza:Lcom/google/android/recaptcha/internal/zzai;

    new-instance v0, Lcom/google/android/recaptcha/internal/zzaf;

    .line 16
    sget-object v12, Lcom/google/android/recaptcha/internal/zzkw;->zze:Lcom/google/android/recaptcha/internal/zzkw;

    invoke-static {}, Lcom/google/android/recaptcha/internal/zzaa;->zzc()Ljava/lang/String;

    move-result-object v13

    invoke-static {}, Lcom/google/android/recaptcha/internal/zzaa;->zzd()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_6

    const/4 v14, 0x0

    goto :goto_6

    :cond_6
    move-object v14, v1

    :goto_6
    invoke-static {}, Lcom/google/android/recaptcha/internal/zzaa;->zzd()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_7

    const/4 v15, 0x0

    goto :goto_7

    :cond_7
    move-object v15, v1

    :goto_7
    const/16 v16, 0x0

    move-object v11, v0

    invoke-direct/range {v11 .. v16}, Lcom/google/android/recaptcha/internal/zzaf;-><init>(Lcom/google/android/recaptcha/internal/zzkw;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    invoke-static {v0, v9, v8}, Lcom/google/android/recaptcha/internal/zzai;->zzc(Lcom/google/android/recaptcha/internal/zzaf;Landroid/content/Context;Lcom/google/android/recaptcha/internal/zzr;)V

    .line 17
    invoke-static {v10}, Lcom/google/android/recaptcha/internal/zzaa;->zzf(Lcom/google/android/recaptcha/internal/zzaa;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 5
    :goto_8
    nop

    .line 18
    const/4 v1, 0x0

    invoke-interface {v7, v1}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    return-object v10

    .line 19
    :cond_8
    :try_start_4
    sget-object v4, Lcom/google/android/recaptcha/internal/zzp;->zza:Lcom/google/android/recaptcha/internal/zzp;

    invoke-static {}, Lcom/google/android/recaptcha/internal/zzp;->zzc()Lkotlinx/coroutines/CoroutineScope;

    move-result-object v4

    invoke-interface {v4}, Lkotlinx/coroutines/CoroutineScope;->getCoroutineContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static {v4, v6, v5, v6}, Lkotlinx/coroutines/JobKt;->cancelChildren$default(Lkotlin/coroutines/CoroutineContext;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    invoke-static {}, Lcom/google/android/recaptcha/internal/zzp;->zzc()Lkotlinx/coroutines/CoroutineScope;

    move-result-object v4

    .line 20
    invoke-interface {v4}, Lkotlinx/coroutines/CoroutineScope;->getCoroutineContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v4

    invoke-static {v4}, Lkotlinx/coroutines/JobKt;->getJob(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/Job;

    move-result-object v4

    invoke-interface {v4}, Lkotlinx/coroutines/Job;->getChildren()Lkotlin/sequences/Sequence;

    move-result-object v4

    invoke-static {v4}, Lkotlin/sequences/SequencesKt;->toList(Lkotlin/sequences/Sequence;)Ljava/util/List;

    move-result-object v4

    iput-object v7, v1, Lcom/google/android/recaptcha/internal/zzv;->zza:Ljava/lang/Object;

    iput-object v0, v1, Lcom/google/android/recaptcha/internal/zzv;->zzb:Ljava/lang/Object;

    const/4 v5, 0x0

    iput-object v5, v1, Lcom/google/android/recaptcha/internal/zzv;->zzc:Ljava/lang/Object;

    iput-object v5, v1, Lcom/google/android/recaptcha/internal/zzv;->zzh:Lcom/google/android/recaptcha/internal/zzw;

    iput-object v5, v1, Lcom/google/android/recaptcha/internal/zzv;->zzd:Ljava/lang/Object;

    const/4 v5, 0x3

    iput v5, v1, Lcom/google/android/recaptcha/internal/zzv;->zzg:I

    invoke-static {v4, v1}, Lkotlinx/coroutines/AwaitKt;->joinAll(Ljava/util/Collection;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-ne v1, v3, :cond_9

    .line 21
    return-object v3

    .line 20
    :cond_9
    move-object v3, v0

    move-object v1, v7

    .line 21
    :goto_9
    :try_start_5
    throw v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :cond_a
    return-object v3

    .line 18
    :cond_b
    move v6, v15

    :try_start_6
    new-instance v0, Lcom/google/android/recaptcha/RecaptchaException;

    .line 22
    sget-object v1, Lcom/google/android/recaptcha/RecaptchaErrorCode;->NETWORK_ERROR:Lcom/google/android/recaptcha/RecaptchaErrorCode;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v6, v3}, Lcom/google/android/recaptcha/RecaptchaException;-><init>(Lcom/google/android/recaptcha/RecaptchaErrorCode;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 1
    :catchall_2
    move-exception v0

    move-object v1, v7

    :goto_a
    nop

    .line 18
    const/4 v3, 0x0

    invoke-interface {v1, v3}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw v0

    .line 21
    :cond_c
    return-object v3

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
