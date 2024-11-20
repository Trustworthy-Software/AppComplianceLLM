.class public final Lio/perfmark/PerfMark;
.super Ljava/lang/Object;
.source "PerfMark.java"


# static fields
.field private static final impl:Lio/perfmark/Impl;


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .line 555
    const/4 v0, 0x0

    .line 556
    .local v0, "instance":Lio/perfmark/Impl;
    const/4 v1, 0x0

    .line 557
    .local v1, "err":Ljava/lang/Throwable;
    const/4 v2, 0x0

    .line 559
    .local v2, "clz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_0
    const-string v3, "io.perfmark.impl.SecretPerfMarkImpl$PerfMarkImpl"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v3

    .line 562
    goto :goto_0

    .line 560
    :catchall_0
    move-exception v3

    .line 561
    .local v3, "t":Ljava/lang/Throwable;
    move-object v1, v3

    .line 563
    .end local v3    # "t":Ljava/lang/Throwable;
    :goto_0
    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_0

    .line 565
    :try_start_1
    const-class v5, Lio/perfmark/Impl;

    invoke-virtual {v2, v5}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v5

    new-array v6, v4, [Ljava/lang/Class;

    const-class v7, Lio/perfmark/Tag;

    aput-object v7, v6, v3

    invoke-virtual {v5, v6}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v5

    new-array v6, v4, [Ljava/lang/Object;

    sget-object v7, Lio/perfmark/Impl;->NO_TAG:Lio/perfmark/Tag;

    aput-object v7, v6, v3

    invoke-virtual {v5, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lio/perfmark/Impl;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v0, v5

    .line 568
    goto :goto_1

    .line 566
    :catchall_1
    move-exception v5

    .line 567
    .local v5, "t":Ljava/lang/Throwable;
    move-object v1, v5

    .line 570
    .end local v5    # "t":Ljava/lang/Throwable;
    :cond_0
    :goto_1
    if-eqz v0, :cond_1

    .line 571
    sput-object v0, Lio/perfmark/PerfMark;->impl:Lio/perfmark/Impl;

    goto :goto_2

    .line 573
    :cond_1
    new-instance v5, Lio/perfmark/Impl;

    sget-object v6, Lio/perfmark/Impl;->NO_TAG:Lio/perfmark/Tag;

    invoke-direct {v5, v6}, Lio/perfmark/Impl;-><init>(Lio/perfmark/Tag;)V

    sput-object v5, Lio/perfmark/PerfMark;->impl:Lio/perfmark/Impl;

    .line 575
    :goto_2
    if-eqz v1, :cond_3

    .line 577
    :try_start_2
    const-string v5, "io.perfmark.PerfMark.debug"

    invoke-static {v5}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 581
    const-string v5, "java.util.logging.Logger"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    .line 582
    .local v5, "logClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v6, "getLogger"

    new-array v7, v4, [Ljava/lang/Class;

    const-class v8, Ljava/lang/String;

    aput-object v8, v7, v3

    invoke-virtual {v5, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    new-array v7, v4, [Ljava/lang/Object;

    const-class v8, Lio/perfmark/PerfMark;

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v3

    const/4 v8, 0x0

    invoke-virtual {v6, v8, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 583
    .local v6, "logger":Ljava/lang/Object;
    const-string v7, "java.util.logging.Level"

    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    .line 584
    .local v7, "levelClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v9, "FINE"

    invoke-virtual {v7, v9}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .line 585
    .local v8, "level":Ljava/lang/Object;
    const-string v9, "log"

    const/4 v10, 0x3

    new-array v11, v10, [Ljava/lang/Class;

    aput-object v7, v11, v3

    const-class v12, Ljava/lang/String;

    aput-object v12, v11, v4

    const-class v12, Ljava/lang/Throwable;

    const/4 v13, 0x2

    aput-object v12, v11, v13

    invoke-virtual {v5, v9, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v9

    .line 586
    .local v9, "logMethod":Ljava/lang/reflect/Method;
    new-array v10, v10, [Ljava/lang/Object;

    aput-object v8, v10, v3

    const-string v3, "Error during PerfMark.<clinit>"

    aput-object v3, v10, v4

    aput-object v1, v10, v13

    invoke-virtual {v9, v6, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 590
    .end local v5    # "logClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v6    # "logger":Ljava/lang/Object;
    .end local v7    # "levelClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v8    # "level":Ljava/lang/Object;
    .end local v9    # "logMethod":Ljava/lang/reflect/Method;
    :cond_2
    goto :goto_3

    .line 588
    :catchall_2
    move-exception v3

    .line 592
    .end local v0    # "instance":Lio/perfmark/Impl;
    .end local v1    # "err":Ljava/lang/Throwable;
    .end local v2    # "clz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_3
    :goto_3
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 594
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static attachTag(Lio/perfmark/Tag;)V
    .locals 1
    .param p0, "tag"    # Lio/perfmark/Tag;

    .line 432
    sget-object v0, Lio/perfmark/PerfMark;->impl:Lio/perfmark/Impl;

    invoke-virtual {v0, p0}, Lio/perfmark/Impl;->attachTag(Lio/perfmark/Tag;)V

    .line 433
    return-void
.end method

.method public static attachTag(Ljava/lang/String;J)V
    .locals 1
    .param p0, "tagName"    # Ljava/lang/String;
    .param p1, "tagValue"    # J

    .line 462
    sget-object v0, Lio/perfmark/PerfMark;->impl:Lio/perfmark/Impl;

    invoke-virtual {v0, p0, p1, p2}, Lio/perfmark/Impl;->attachTag(Ljava/lang/String;J)V

    .line 463
    return-void
.end method

.method public static attachTag(Ljava/lang/String;JJ)V
    .locals 6
    .param p0, "tagName"    # Ljava/lang/String;
    .param p1, "tagValue0"    # J
    .param p3, "tagValue1"    # J

    .line 494
    sget-object v0, Lio/perfmark/PerfMark;->impl:Lio/perfmark/Impl;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-virtual/range {v0 .. v5}, Lio/perfmark/Impl;->attachTag(Ljava/lang/String;JJ)V

    .line 495
    return-void
.end method

.method public static attachTag(Ljava/lang/String;Ljava/lang/Object;Lio/perfmark/StringFunction;)V
    .locals 1
    .param p0, "tagName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TT;",
            "Lio/perfmark/StringFunction<",
            "-TT;>;)V"
        }
    .end annotation

    .line 549
    .local p1, "tagObject":Ljava/lang/Object;, "TT;"
    .local p2, "stringFunction":Lio/perfmark/StringFunction;, "Lio/perfmark/StringFunction<-TT;>;"
    sget-object v0, Lio/perfmark/PerfMark;->impl:Lio/perfmark/Impl;

    invoke-virtual {v0, p0, p1, p2}, Lio/perfmark/Impl;->attachTag(Ljava/lang/String;Ljava/lang/Object;Lio/perfmark/StringFunction;)V

    .line 550
    return-void
.end method

.method public static attachTag(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "tagName"    # Ljava/lang/String;
    .param p1, "tagValue"    # Ljava/lang/String;

    .line 447
    sget-object v0, Lio/perfmark/PerfMark;->impl:Lio/perfmark/Impl;

    invoke-virtual {v0, p0, p1}, Lio/perfmark/Impl;->attachTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 448
    return-void
.end method

.method public static createTag()Lio/perfmark/Tag;
    .locals 1

    .line 321
    sget-object v0, Lio/perfmark/Impl;->NO_TAG:Lio/perfmark/Tag;

    return-object v0
.end method

.method public static createTag(J)Lio/perfmark/Tag;
    .locals 2
    .param p0, "id"    # J

    .line 333
    sget-object v0, Lio/perfmark/PerfMark;->impl:Lio/perfmark/Impl;

    const-string v1, ""

    invoke-virtual {v0, v1, p0, p1}, Lio/perfmark/Impl;->createTag(Ljava/lang/String;J)Lio/perfmark/Tag;

    move-result-object v0

    return-object v0
.end method

.method public static createTag(Ljava/lang/String;)Lio/perfmark/Tag;
    .locals 3
    .param p0, "name"    # Ljava/lang/String;

    .line 345
    sget-object v0, Lio/perfmark/PerfMark;->impl:Lio/perfmark/Impl;

    const-wide/high16 v1, -0x8000000000000000L

    invoke-virtual {v0, p0, v1, v2}, Lio/perfmark/Impl;->createTag(Ljava/lang/String;J)Lio/perfmark/Tag;

    move-result-object v0

    return-object v0
.end method

.method public static createTag(Ljava/lang/String;J)Lio/perfmark/Tag;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "id"    # J

    .line 358
    sget-object v0, Lio/perfmark/PerfMark;->impl:Lio/perfmark/Impl;

    invoke-virtual {v0, p0, p1, p2}, Lio/perfmark/Impl;->createTag(Ljava/lang/String;J)Lio/perfmark/Tag;

    move-result-object v0

    return-object v0
.end method

.method public static event(Ljava/lang/String;)V
    .locals 1
    .param p0, "eventName"    # Ljava/lang/String;

    .line 228
    sget-object v0, Lio/perfmark/PerfMark;->impl:Lio/perfmark/Impl;

    invoke-virtual {v0, p0}, Lio/perfmark/Impl;->event(Ljava/lang/String;)V

    .line 229
    return-void
.end method

.method public static event(Ljava/lang/String;Lio/perfmark/Tag;)V
    .locals 1
    .param p0, "eventName"    # Ljava/lang/String;
    .param p1, "tag"    # Lio/perfmark/Tag;

    .line 217
    sget-object v0, Lio/perfmark/PerfMark;->impl:Lio/perfmark/Impl;

    invoke-virtual {v0, p0, p1}, Lio/perfmark/Impl;->event(Ljava/lang/String;Lio/perfmark/Tag;)V

    .line 218
    return-void
.end method

.method public static event(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "eventName"    # Ljava/lang/String;
    .param p1, "subEventName"    # Ljava/lang/String;

    .line 241
    sget-object v0, Lio/perfmark/PerfMark;->impl:Lio/perfmark/Impl;

    invoke-virtual {v0, p0, p1}, Lio/perfmark/Impl;->event(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    return-void
.end method

.method public static link()Lio/perfmark/Link;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 369
    sget-object v0, Lio/perfmark/Impl;->NO_LINK:Lio/perfmark/Link;

    return-object v0
.end method

.method public static linkIn(Lio/perfmark/Link;)V
    .locals 1
    .param p0, "link"    # Lio/perfmark/Link;

    .line 393
    sget-object v0, Lio/perfmark/PerfMark;->impl:Lio/perfmark/Impl;

    invoke-virtual {v0, p0}, Lio/perfmark/Impl;->linkIn(Lio/perfmark/Link;)V

    .line 394
    return-void
.end method

.method public static linkOut()Lio/perfmark/Link;
    .locals 1

    .line 382
    sget-object v0, Lio/perfmark/PerfMark;->impl:Lio/perfmark/Impl;

    invoke-virtual {v0}, Lio/perfmark/Impl;->linkOut()Lio/perfmark/Link;

    move-result-object v0

    return-object v0
.end method

.method public static setEnabled(Z)V
    .locals 1
    .param p0, "value"    # Z

    .line 100
    sget-object v0, Lio/perfmark/PerfMark;->impl:Lio/perfmark/Impl;

    invoke-virtual {v0, p0}, Lio/perfmark/Impl;->setEnabled(Z)V

    .line 101
    return-void
.end method

.method public static startTask(Ljava/lang/Object;Lio/perfmark/StringFunction;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lio/perfmark/StringFunction<",
            "-TT;>;)V"
        }
    .end annotation

    .line 145
    .local p0, "taskNameObject":Ljava/lang/Object;, "TT;"
    .local p1, "taskNameFunction":Lio/perfmark/StringFunction;, "Lio/perfmark/StringFunction<-TT;>;"
    sget-object v0, Lio/perfmark/PerfMark;->impl:Lio/perfmark/Impl;

    invoke-virtual {v0, p0, p1}, Lio/perfmark/Impl;->startTask(Ljava/lang/Object;Lio/perfmark/StringFunction;)V

    .line 146
    return-void
.end method

.method public static startTask(Ljava/lang/String;)V
    .locals 1
    .param p0, "taskName"    # Ljava/lang/String;

    .line 127
    sget-object v0, Lio/perfmark/PerfMark;->impl:Lio/perfmark/Impl;

    invoke-virtual {v0, p0}, Lio/perfmark/Impl;->startTask(Ljava/lang/String;)V

    .line 128
    return-void
.end method

.method public static startTask(Ljava/lang/String;Lio/perfmark/Tag;)V
    .locals 1
    .param p0, "taskName"    # Ljava/lang/String;
    .param p1, "tag"    # Lio/perfmark/Tag;

    .line 116
    sget-object v0, Lio/perfmark/PerfMark;->impl:Lio/perfmark/Impl;

    invoke-virtual {v0, p0, p1}, Lio/perfmark/Impl;->startTask(Ljava/lang/String;Lio/perfmark/Tag;)V

    .line 117
    return-void
.end method

.method public static startTask(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "taskName"    # Ljava/lang/String;
    .param p1, "subTaskName"    # Ljava/lang/String;

    .line 159
    sget-object v0, Lio/perfmark/PerfMark;->impl:Lio/perfmark/Impl;

    invoke-virtual {v0, p0, p1}, Lio/perfmark/Impl;->startTask(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    return-void
.end method

.method public static stopTask()V
    .locals 1

    .line 253
    sget-object v0, Lio/perfmark/PerfMark;->impl:Lio/perfmark/Impl;

    invoke-virtual {v0}, Lio/perfmark/Impl;->stopTask()V

    .line 254
    return-void
.end method

.method public static stopTask(Ljava/lang/String;)V
    .locals 1
    .param p0, "taskName"    # Ljava/lang/String;

    .line 288
    sget-object v0, Lio/perfmark/PerfMark;->impl:Lio/perfmark/Impl;

    invoke-virtual {v0, p0}, Lio/perfmark/Impl;->stopTask(Ljava/lang/String;)V

    .line 289
    return-void
.end method

.method public static stopTask(Ljava/lang/String;Lio/perfmark/Tag;)V
    .locals 1
    .param p0, "taskName"    # Ljava/lang/String;
    .param p1, "tag"    # Lio/perfmark/Tag;

    .line 271
    sget-object v0, Lio/perfmark/PerfMark;->impl:Lio/perfmark/Impl;

    invoke-virtual {v0, p0, p1}, Lio/perfmark/Impl;->stopTask(Ljava/lang/String;Lio/perfmark/Tag;)V

    .line 272
    return-void
.end method

.method public static stopTask(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "taskName"    # Ljava/lang/String;
    .param p1, "subTaskName"    # Ljava/lang/String;

    .line 307
    sget-object v0, Lio/perfmark/PerfMark;->impl:Lio/perfmark/Impl;

    invoke-virtual {v0, p0, p1}, Lio/perfmark/Impl;->stopTask(Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    return-void
.end method

.method public static traceTask(Ljava/lang/Object;Lio/perfmark/StringFunction;)Lio/perfmark/TaskCloseable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lio/perfmark/StringFunction<",
            "-TT;>;)",
            "Lio/perfmark/TaskCloseable;"
        }
    .end annotation

    .line 200
    .local p0, "taskNameObject":Ljava/lang/Object;, "TT;"
    .local p1, "taskNameFunction":Lio/perfmark/StringFunction;, "Lio/perfmark/StringFunction<-TT;>;"
    sget-object v0, Lio/perfmark/PerfMark;->impl:Lio/perfmark/Impl;

    invoke-virtual {v0, p0, p1}, Lio/perfmark/Impl;->startTask(Ljava/lang/Object;Lio/perfmark/StringFunction;)V

    .line 201
    sget-object v0, Lio/perfmark/TaskCloseable;->INSTANCE:Lio/perfmark/TaskCloseable;

    return-object v0
.end method

.method public static traceTask(Ljava/lang/String;)Lio/perfmark/TaskCloseable;
    .locals 1
    .param p0, "taskName"    # Ljava/lang/String;

    .line 177
    sget-object v0, Lio/perfmark/PerfMark;->impl:Lio/perfmark/Impl;

    invoke-virtual {v0, p0}, Lio/perfmark/Impl;->startTask(Ljava/lang/String;)V

    .line 178
    sget-object v0, Lio/perfmark/TaskCloseable;->INSTANCE:Lio/perfmark/TaskCloseable;

    return-object v0
.end method
