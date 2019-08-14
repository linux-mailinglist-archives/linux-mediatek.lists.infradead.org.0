Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C28FC8CB71
	for <lists+linux-mediatek@lfdr.de>; Wed, 14 Aug 2019 07:56:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:From:To:Subject:MIME-Version
	:References:In-Reply-To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=S2L4IXK7+j7Omvd3FrlOXOTkGoTSoZsaNkDaGv5bJZQ=; b=VotKB8Q2EiuRal
	NdGjCnWWx0ollz74i5YYgNmUw5h5yBJbrBwhSXjxHzltobnTldiUZSGcv8qhfIKIF9fgnsbaHqITS
	YUuIHBc2GxjG9oN9bQhcLQval993r1ZnTA+jXh+5dO+3XauDsHw6hI69JYpwUY+wTOji7saR9IKT2
	tW7QYDOoNS2YmMQCYxXUGuG5fxPGdnGLrCJug+Fc7dnG9MBszoAPNbc6ee1McGiDwRuUOKNSLqTlG
	71SuRaynAYsXRWypNG6Y9JbOskBBlk1Xgw8IrYyHYtjZAVaaGExKGzZDKIalacgHVryQGWwzGLoJs
	/5IvtSPaZNMq0ZXsHuPQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxmH5-0004p8-L1; Wed, 14 Aug 2019 05:56:43 +0000
Received: from mout.gmx.net ([212.227.15.19])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxmH1-0004oq-LT
 for linux-mediatek@lists.infradead.org; Wed, 14 Aug 2019 05:56:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1565762193;
 bh=ezj5AnqztgmyDLplws/hUvmUzqmTZ5iTXOaPJ/u9xmY=;
 h=X-UI-Sender-Class:Date:In-Reply-To:References:Subject:To:CC:From;
 b=NcSoEoloTzSecgGQvuloe4EF8xH4WNAtljZ4eMqXsTbSbE9XqY75PmXzdH6IbTJbu
 RW6mZjEqfIjRJzZM41VFmDo1iNrmABifUzFy/jdAnNzQm1wH5dm2nT1bDPHMFg7N0/
 t3mpFirGXjbiHUtqmxMzurscuVmsdVw0TUXw1U+8=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from frank-bq ([217.61.145.139]) by mail.gmx.com (mrgmx001
 [212.227.17.190]) with ESMTPSA (Nemesis) id 0MXI5V-1hlScf3wAv-00WB9P; Wed, 14
 Aug 2019 07:56:33 +0200
Date: Wed, 14 Aug 2019 07:56:30 +0200
User-Agent: K-9 Mail for Android
In-Reply-To: <CAL_Jsq+fW=x8MoL3GMj6+ZKC3fd6F6+8Rtx=j5R9vEuL9UHCuQ@mail.gmail.com>
References: <20190812121511.4169-1-frank-w@public-files.de>
 <20190812121511.4169-2-frank-w@public-files.de>
 <CAL_Jsq+fW=x8MoL3GMj6+ZKC3fd6F6+8Rtx=j5R9vEuL9UHCuQ@mail.gmail.com>
MIME-Version: 1.0
Subject: Re: [PATCH v5 01/10] dt-bindings: add powercontroller
To: Rob Herring <robh+dt@kernel.org>
From: Frank Wunderlich <frank-w@public-files.de>
Message-ID: <D446D5D6-3A08-48B7-AC7E-BEB0ABCCA782@public-files.de>
X-Provags-ID: V03:K1:gZyzIz4M+/mhKDiaoeACmzSgwN6RoyX3GIQ4DVFmyjHDECpC8pb
 ukCxdq3XsGJIeubWdmdOsO1lhuA0EUHpIj9Ks2yfLbiSHDV6+t+CPXbnH5qj+mU0camrZUy
 l4AiBMfphmxtd+MOPvpr1acF4+lXZ2k/tIX7GeNC1ifdolSlLMx5LQOjqurb//b+Y/uCYL3
 es0yuiaSQmksKINrpcaMQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:FvFGOBd82hg=:IHx3TfMVXcxGcC4Mwthgl8
 O2+zR17HOpqJoQVpxUGF4nk78fl2ONa0hpfhF0gG6dLDPn/uDGhNA4M0PUNFO7x8F+9fFvwXm
 9nOH+RLELfNzGvG1Vt4tClbTnU2UsVIl6SuDxtPgn9lKjMf0J344uiLL90HiNzsP1wC14fVvF
 OWGI6oSmNG+CLdXjGF+ML64zG0C+8xaRl12Pr1f2/kkZ0mOAJEw7NLMILAax7Mh5y0rjPJJyM
 KqMoMnzq9oBdWPkcostf5/jMqA+DAyZrgH5L7k1oLDwjfn+7J+/dfZJLkiScDgJBsi5ENTUZY
 cmkNJeMdyw06v68QMSc/NzwlVVhVtA2jjlhnrOv6Rnpe3xjRf4GnH9PLwTpd3wH8SltO9HUzR
 O2cV0e1DlxAG2WpWF3kEvv2IF6irQ4xMSROdml7uwyd34Vzxnp/RrlVxcwJvDI8gRTQNkrASH
 KZWixyQKR26DSfgupRlAbc5q6VDGAlrOW8OOF35WDBsoaQ5L8B6dBsS5YJXP1T/p0ojvf1aS6
 8dClEUZzVZHiJbCQziwE6YDqX4OgZg59ggi4NnO13rqmU4Q2MD+gaEb38GElwsa+TaD6V0foD
 PoCUz2zL5OEyV/+XEik7A96ZPgj5SbHU+fHoY6y0FR6LiZaZbo4xOoJWR6+pZEB1Wz4UKIsQH
 AEF/0W1BkFaiEcRxhO679gV20WyXRdGIXsie6WpwGFskXZa/yJbTK8vKZ4ygxlql1LpXCVaXN
 DSepQBqsU/eMsPIYwOxjuLkMRn1epHyGaCbYAbUWDcqfIzWHDaOEq2MpzdJ4LmfiaiHIszSnO
 07paGtCVgfNovswjLMpcBNcUzaDVmA2Uz4S7RXe5fiZCLzW8dbDQqzyfEHUk+yWpjrd/MrvVx
 cdlb2/PinMjlmZlNB6feAF8IUOpwRuyOXaKBw0nQq9vGiBYywbRAZpSaE7XmPdYCs1ffaHGoh
 1PkIev+9JMCQ62dkX/LyUfNeUHz1uWlruKT+gWD8oL0sF3P2CKzFiOgHbad/FNBkVmmBS+NGF
 ryZ8wZ3xwFRfQsWyBm0u70b+RUUolS+IuJhmur3usq8HS6ftftw703crGFIz7VHIAKiodriUB
 DA2yih+gVFX5ZGMky0+54rzcMwd7GmQ6ZdbkUXz0gRCJXboefeEofrmMhnfwgjvaTNRi+LYlq
 fh5ZM=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190813_225640_108870_B4B32FFF 
X-CRM114-Status: UNSURE (   5.19  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.15.19 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-BeenThere: linux-mediatek@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <linux-mediatek.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-mediatek>, 
 <mailto:linux-mediatek-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-mediatek/>
List-Post: <mailto:linux-mediatek@lists.infradead.org>
List-Help: <mailto:linux-mediatek-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-mediatek>, 
 <mailto:linux-mediatek-request@lists.infradead.org?subject=subscribe>
Cc: linux-mediatek@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

Thank you for review

Am 13. August 2019 17:25:47 MESZ schrieb Rob Herring <robh+dt@kernel.org>:
>How does this get to v5 with such a terrible subject? At least give
some indication this is for some Mediatek chip.

I try to make a better one :) i thougt mt63xx was enough

> The recipient list needs some work too. Don't Cc git committers that
get_maintainers.pl lists.

I thought it should be send to all listed by this script...which have to be adressed?

> Unrelated change to what the subject says. Clean-ups and new things in
separate patches please.
...
How is this related to 'powercontroller'?

I will split changes into separate commits.

Btw. I can't reply-all because message-header gets broken,maybe too much recipients.

Regards Frank

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
