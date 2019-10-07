Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 735F0CE3CA
	for <lists+linux-mediatek@lfdr.de>; Mon,  7 Oct 2019 15:34:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3q0ois8JJIS0sLvkmqT9sULDOC0fGCUuqUosCoo5xys=; b=gPJ5TVNS6jX2ar
	xA/j3L+G3SZ5c4Hq36smFVqHXD8tjVpm6D9FA/O9ODg3tWb96ZE060LxHhPri44eNT/9YLm50q6Ca
	8q/Qjzgv2fhqmevuX1Tdb4YNW7AkRYdhWpEMpgEUr3T6Svo6ViY0NCVMjZra/KSb38c5P8+ersIe4
	3iD3uSXBUODfUaY+ZpH/neShItfE9yYeqHx0cB3AxcViqAy1TkACnj6j0iK9486RkrOy/v8Rybm5k
	w8WFeUOhUd4pP8NZ3HuvO2giLpBMDlLh9v6Ludi65QHBeHMvSiXHF1xeqCgwylFX43t3dpLUdt/j+
	CEZILHYjRihalNQuN4MQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHT9W-0003ph-B2; Mon, 07 Oct 2019 13:34:18 +0000
Received: from mail-qk1-x741.google.com ([2607:f8b0:4864:20::741])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHT9J-0003hM-2t
 for linux-mediatek@lists.infradead.org; Mon, 07 Oct 2019 13:34:08 +0000
Received: by mail-qk1-x741.google.com with SMTP id q203so12565839qke.1
 for <linux-mediatek@lists.infradead.org>; Mon, 07 Oct 2019 06:34:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Nwlp1QPq4c1Fg6asQ7NB8TWNONjREWmPa9T7sJeo1Lk=;
 b=LpR2u7B9qLEOo21QyyEqXT18++T96JVqMjjDQyKd2ZljeCz4lOfAqE9jICCOUofOUh
 JVqDxIg1Co8ZFXn/zlC3TsCfiNvKGMhAnJLziq46rxbu4og/R+XW5nGWOgqMfz6pbbio
 DYlXgZzLO48AJQMOMhcVvAs3AI4aCK6b9O3UsPvpLyfmVZgxV62R4sbvBtT07sHpnj9p
 GKBLb19GpMl2Ppo9oiKiS+DUJEs6IMFL9vxBn6QRUcr9K8bqdEuG6fWgtOg4oqA3msfL
 F8mqxebT+PFm55/aoOV7zBRZ7ftd+J6BEiZbp+9jRyzhUTvQLBzB0PTqhbMLTk9e18EE
 78RA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Nwlp1QPq4c1Fg6asQ7NB8TWNONjREWmPa9T7sJeo1Lk=;
 b=TZmrCltporo5I+tTZwlf2H4kTU6yA76rAEPpKcdmlSHqSJKCKQ4yRErIuEQTgvMzrH
 zensZa4IeErCQLIEOFVyy+7cysH8IQch/1aLGHzexl2xkxf1mkD1wKxcKADA0nUHEKZF
 ObBU84QTx3picp+ZHZR7htI8zHmUmxeihgSscI6iderHskvTqPwuI5zrrNqsKG0BkhwU
 3smqkv6eOnvV1IdOcunzNbHRKEzPV1ebaRxb2kkC4HYFcU9RJq8jdh1XB0HhnewMWeeX
 ZyytBOmZYIYWgebLSzS3Nuk3nfNYLfvURpUHdBat630mEGRIyC/5IfZwjgDuODi/3BHz
 vc+A==
X-Gm-Message-State: APjAAAUdVutw7ABT2mGn8OjeUojYGzoQ5I8XyAOFBhENMleM0h1V5Wor
 3KkxihknrvAmy+mEosjKmTXAP/qPYFZMAqJYLdTa4g==
X-Google-Smtp-Source: APXvYqw2Ad19XCqX+cZlHA+koY+Sx+ZtM8Qex4TkHKoGbm8iZRab0lV148rExC6MroVc/4YnPTOIulyRMYK1XqNpOvw=
X-Received: by 2002:a37:e10f:: with SMTP id c15mr22691586qkm.256.1570455243666; 
 Mon, 07 Oct 2019 06:34:03 -0700 (PDT)
MIME-Version: 1.0
References: <20190927034338.15813-1-walter-zh.wu@mediatek.com>
 <CACT4Y+Zxz+R=qQxSMoipXoLjRqyApD3O0eYpK0nyrfGHE4NNPw@mail.gmail.com>
 <1569594142.9045.24.camel@mtksdccf07>
 <CACT4Y+YuAxhKtL7ho7jpVAPkjG-JcGyczMXmw8qae2iaZjTh_w@mail.gmail.com>
 <1569818173.17361.19.camel@mtksdccf07> <1570018513.19702.36.camel@mtksdccf07>
 <CACT4Y+bbZhvz9ZpHtgL8rCCsV=ybU5jA6zFnJBL7gY2cNXDLyQ@mail.gmail.com>
 <1570069078.19702.57.camel@mtksdccf07>
 <CACT4Y+ZwNv2-QBrvuR2JvemovmKPQ9Ggrr=ZkdTg6xy_Ki6UAg@mail.gmail.com>
 <1570095525.19702.59.camel@mtksdccf07> <1570110681.19702.64.camel@mtksdccf07>
 <CACT4Y+aKrC8mtcDTVhM-So-TTLjOyFCD7r6jryWFH6i2he1WJA@mail.gmail.com>
 <1570164140.19702.97.camel@mtksdccf07> <1570176131.19702.105.camel@mtksdccf07>
 <CACT4Y+ZvhomaeXFKr4za6MJi=fW2SpPaCFP=fk06CMRhNcmFvQ@mail.gmail.com>
 <1570182257.19702.109.camel@mtksdccf07>
 <CACT4Y+ZnWPEO-9DkE6C3MX-Wo+8pdS6Gr6-2a8LzqBS=2fe84w@mail.gmail.com>
 <1570190718.19702.125.camel@mtksdccf07>
 <CACT4Y+YbkjuW3_WQJ4BB8YHWvxgHJyZYxFbDJpnPzfTMxYs60g@mail.gmail.com>
 <1570418576.4686.30.camel@mtksdccf07>
 <CACT4Y+aho7BEvQstd2+a2be-jJ0dEsjGebH7bcUFhYp-PoRDxQ@mail.gmail.com>
 <1570436289.4686.40.camel@mtksdccf07>
 <CACT4Y+Z6QObZ2fvVxSmvv16YQAu4GswOqfOVQK_1_Ncz0eir_g@mail.gmail.com>
 <1570438317.4686.44.camel@mtksdccf07>
 <CACT4Y+Yc86bKxDp4ST8+49rzLOWkTXLkjs0eyFtohCi_uSjmLQ@mail.gmail.com>
 <1570439032.4686.50.camel@mtksdccf07>
 <CACT4Y+YL=8jFXrj2LOuQV7ZyDe-am4W8y1WHEDJJ0-mVNJ3_Cw@mail.gmail.com>
 <1570440492.4686.59.camel@mtksdccf07> <1570441833.4686.66.camel@mtksdccf07>
 <CACT4Y+Z0A=Zi4AxEjn4jpHk0xG9+Nh2Q-OYEnOmooW0wN-_vfQ@mail.gmail.com>
 <1570449804.4686.79.camel@mtksdccf07>
 <CACT4Y+b4VX5cW3WhP6o3zyKxHjNZRo1Lokxr0+MwDcB5hV5K+A@mail.gmail.com>
 <1570451575.4686.83.camel@mtksdccf07>
In-Reply-To: <1570451575.4686.83.camel@mtksdccf07>
From: Dmitry Vyukov <dvyukov@google.com>
Date: Mon, 7 Oct 2019 15:33:51 +0200
Message-ID: <CACT4Y+bJFoQPJ4QbGNjAuqiZx-FFsuLansxkhX3kwLOc19NvcA@mail.gmail.com>
Subject: Re: [PATCH] kasan: fix the missing underflow in memmove and memcpy
 with CONFIG_KASAN_GENERIC=y
To: Walter Wu <walter-zh.wu@mediatek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191007_063405_156500_98994D48 
X-CRM114-Status: UNSURE (   8.83  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:741 listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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
Cc: wsd_upstream <wsd_upstream@mediatek.com>,
 linux-mediatek@lists.infradead.org, LKML <linux-kernel@vger.kernel.org>,
 kasan-dev <kasan-dev@googlegroups.com>, Linux-MM <linux-mm@kvack.org>,
 Alexander Potapenko <glider@google.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Andrey Ryabinin <aryabinin@virtuozzo.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Mon, Oct 7, 2019 at 2:33 PM Walter Wu <walter-zh.wu@mediatek.com> wrote:
> On Mon, 2019-10-07 at 14:19 +0200, Dmitry Vyukov wrote:
> > On Mon, Oct 7, 2019 at 2:03 PM Walter Wu <walter-zh.wu@mediatek.com> wrote:
> > My idea was just to always print "heap-out-of-bounds" and don't
> > differentiate if the size come from userspace or not.
>
> Got it.
> Would you have any other concern about this patch?


Last versions of the patch looked good to me except for the bug title.
The comment may also need some updating if you change the title.

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
