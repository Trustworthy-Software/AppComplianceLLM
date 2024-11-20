.class public Lcom/google/firebase/firestore/core/ActivityScope;
.super Ljava/lang/Object;
.source "ActivityScope.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/firestore/core/ActivityScope$StopListenerFragment;,
        Lcom/google/firebase/firestore/core/ActivityScope$StopListenerSupportFragment;,
        Lcom/google/firebase/firestore/core/ActivityScope$CallbackList;
    }
.end annotation


# static fields
.field private static final FRAGMENT_TAG:Ljava/lang/String; = "FirestoreOnStopObserverFragment"

.field private static final SUPPORT_FRAGMENT_TAG:Ljava/lang/String; = "FirestoreOnStopObserverSupportFragment"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bind(Landroid/app/Activity;Lcom/google/firebase/firestore/ListenerRegistration;)Lcom/google/firebase/firestore/ListenerRegistration;
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "registration"    # Lcom/google/firebase/firestore/ListenerRegistration;

    .line 190
    if-eqz p0, :cond_1

    .line 191
    instance-of v0, p0, Landroidx/fragment/app/FragmentActivity;

    if-eqz v0, :cond_0

    .line 192
    move-object v0, p0

    check-cast v0, Landroidx/fragment/app/FragmentActivity;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/google/firebase/firestore/core/ActivityScope$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1}, Lcom/google/firebase/firestore/core/ActivityScope$$ExternalSyntheticLambda0;-><init>(Lcom/google/firebase/firestore/ListenerRegistration;)V

    invoke-static {v0, v1}, Lcom/google/firebase/firestore/core/ActivityScope;->onFragmentActivityStopCallOnce(Landroidx/fragment/app/FragmentActivity;Ljava/lang/Runnable;)V

    goto :goto_0

    .line 194
    :cond_0
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/google/firebase/firestore/core/ActivityScope$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Lcom/google/firebase/firestore/core/ActivityScope$$ExternalSyntheticLambda0;-><init>(Lcom/google/firebase/firestore/ListenerRegistration;)V

    invoke-static {p0, v0}, Lcom/google/firebase/firestore/core/ActivityScope;->onActivityStopCallOnce(Landroid/app/Activity;Ljava/lang/Runnable;)V

    .line 197
    :cond_1
    :goto_0
    return-object p1
.end method

.method private static castFragment(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 4
    .param p1, "fragment"    # Ljava/lang/Object;
    .param p2, "tag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 111
    .local p0, "fragmentClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    if-nez p1, :cond_0

    .line 112
    const/4 v0, 0x0

    return-object v0

    .line 114
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 115
    :catch_0
    move-exception v0

    .line 116
    .local v0, "e":Ljava/lang/ClassCastException;
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Fragment with tag \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' is a "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 120
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " but should be a "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 122
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method static synthetic lambda$onActivityStopCallOnce$0(Landroid/app/Activity;Ljava/lang/Runnable;)V
    .locals 3
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "callback"    # Ljava/lang/Runnable;

    .line 142
    const-class v0, Lcom/google/firebase/firestore/core/ActivityScope$StopListenerFragment;

    .line 145
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "FirestoreOnStopObserverFragment"

    invoke-virtual {v1, v2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    .line 143
    invoke-static {v0, v1, v2}, Lcom/google/firebase/firestore/core/ActivityScope;->castFragment(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/firestore/core/ActivityScope$StopListenerFragment;

    .line 148
    .local v0, "fragment":Lcom/google/firebase/firestore/core/ActivityScope$StopListenerFragment;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/firebase/firestore/core/ActivityScope$StopListenerFragment;->isRemoving()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 149
    :cond_0
    new-instance v1, Lcom/google/firebase/firestore/core/ActivityScope$StopListenerFragment;

    invoke-direct {v1}, Lcom/google/firebase/firestore/core/ActivityScope$StopListenerFragment;-><init>()V

    move-object v0, v1

    .line 150
    nop

    .line 151
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    .line 152
    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 153
    invoke-virtual {v1, v0, v2}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 154
    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 156
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    .line 159
    :cond_1
    iget-object v1, v0, Lcom/google/firebase/firestore/core/ActivityScope$StopListenerFragment;->callbacks:Lcom/google/firebase/firestore/core/ActivityScope$CallbackList;

    invoke-virtual {v1, p1}, Lcom/google/firebase/firestore/core/ActivityScope$CallbackList;->add(Ljava/lang/Runnable;)V

    .line 160
    return-void
.end method

.method static synthetic lambda$onFragmentActivityStopCallOnce$1(Landroidx/fragment/app/FragmentActivity;Ljava/lang/Runnable;)V
    .locals 3
    .param p0, "activity"    # Landroidx/fragment/app/FragmentActivity;
    .param p1, "callback"    # Ljava/lang/Runnable;

    .line 166
    const-class v0, Lcom/google/firebase/firestore/core/ActivityScope$StopListenerSupportFragment;

    .line 169
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    const-string v2, "FirestoreOnStopObserverSupportFragment"

    invoke-virtual {v1, v2}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v1

    .line 167
    invoke-static {v0, v1, v2}, Lcom/google/firebase/firestore/core/ActivityScope;->castFragment(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/firestore/core/ActivityScope$StopListenerSupportFragment;

    .line 172
    .local v0, "fragment":Lcom/google/firebase/firestore/core/ActivityScope$StopListenerSupportFragment;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/firebase/firestore/core/ActivityScope$StopListenerSupportFragment;->isRemoving()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 173
    :cond_0
    new-instance v1, Lcom/google/firebase/firestore/core/ActivityScope$StopListenerSupportFragment;

    invoke-direct {v1}, Lcom/google/firebase/firestore/core/ActivityScope$StopListenerSupportFragment;-><init>()V

    move-object v0, v1

    .line 174
    nop

    .line 175
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    .line 176
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v1

    .line 177
    invoke-virtual {v1, v0, v2}, Landroidx/fragment/app/FragmentTransaction;->add(Landroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v1

    .line 178
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 180
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->executePendingTransactions()Z

    .line 183
    :cond_1
    iget-object v1, v0, Lcom/google/firebase/firestore/core/ActivityScope$StopListenerSupportFragment;->callbacks:Lcom/google/firebase/firestore/core/ActivityScope$CallbackList;

    invoke-virtual {v1, p1}, Lcom/google/firebase/firestore/core/ActivityScope$CallbackList;->add(Ljava/lang/Runnable;)V

    .line 184
    return-void
.end method

.method private static onActivityStopCallOnce(Landroid/app/Activity;Ljava/lang/Runnable;)V
    .locals 3
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "callback"    # Ljava/lang/Runnable;

    .line 136
    instance-of v0, p0, Landroidx/fragment/app/FragmentActivity;

    xor-int/lit8 v0, v0, 0x1

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "onActivityStopCallOnce must be called with a *non*-FragmentActivity Activity."

    invoke-static {v0, v2, v1}, Lcom/google/firebase/firestore/util/Assert;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 140
    new-instance v0, Lcom/google/firebase/firestore/core/ActivityScope$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1}, Lcom/google/firebase/firestore/core/ActivityScope$$ExternalSyntheticLambda1;-><init>(Landroid/app/Activity;Ljava/lang/Runnable;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 161
    return-void
.end method

.method private static onFragmentActivityStopCallOnce(Landroidx/fragment/app/FragmentActivity;Ljava/lang/Runnable;)V
    .locals 1
    .param p0, "activity"    # Landroidx/fragment/app/FragmentActivity;
    .param p1, "callback"    # Ljava/lang/Runnable;

    .line 164
    new-instance v0, Lcom/google/firebase/firestore/core/ActivityScope$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p1}, Lcom/google/firebase/firestore/core/ActivityScope$$ExternalSyntheticLambda2;-><init>(Landroidx/fragment/app/FragmentActivity;Ljava/lang/Runnable;)V

    invoke-virtual {p0, v0}, Landroidx/fragment/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 185
    return-void
.end method
