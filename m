Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 223951B915
	for <lists+linux-mediatek@lfdr.de>; Mon, 13 May 2019 16:51:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PiDUvry/iMtkxQ1w0YPfUpCheGHQvV+AkpO/w/DpLYc=; b=TMabviixJwrQNx
	XEeExzV2JZmeZq7ynn2Y8mEKxeOa9H5WwznIqd7TNw5QWdYvgx2j/VR0OBK40GkSQjpHTfRDJrlFz
	AAbDOyeWckiXDbzWKcOgn6bwgn2RRUi1+SvYxBWWBJgpCYP2AwKGT3zhqMYRRqCLVZyePYhszvFp7
	tIGdihI9Pd/3UbHKtzwVpVdy2WO04WpUMelNJOst3wedBvGYCM4GCAjukkdU/+F+DSgS/T1X3aPTk
	Irib0yr4FMqKQCrGwZOtJ/KV3IgMkRyVyZs+QVYOsVwszifRQ5hk/3bWbtXGCAlcDFL7ykdiG+F3x
	g2RrSdoS7XSwre020tzg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQCIR-00036C-Gg; Mon, 13 May 2019 14:51:19 +0000
Received: from ns.iliad.fr ([212.27.33.1])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQCIJ-0002zg-13; Mon, 13 May 2019 14:51:12 +0000
Received: from ns.iliad.fr (localhost [127.0.0.1])
 by ns.iliad.fr (Postfix) with ESMTP id 3F90D1FF44;
 Mon, 13 May 2019 16:51:05 +0200 (CEST)
Received: from [192.168.108.49] (freebox.vlq16.iliad.fr [213.36.7.13])
 by ns.iliad.fr (Postfix) with ESMTP id 0834A1FF2B;
 Mon, 13 May 2019 16:51:05 +0200 (CEST)
Subject: Re: [PATCH v1 0/3] scsi: ufs: add error handlings of auto-hibern8
To: Stanley Chu <stanley.chu@mediatek.com>, linux-scsi@vger.kernel.org,
 martin.petersen@oracle.com, avri.altman@wdc.com, alim.akhtar@samsung.com,
 pedrom.sousa@synopsys.com
References: <1557758186-18706-1-git-send-email-stanley.chu@mediatek.com>
From: Marc Gonzalez <marc.w.gonzalez@free.fr>
Message-ID: <55818bc4-d464-bb35-25bb-9ef87af8224e@free.fr>
Date: Mon, 13 May 2019 16:51:04 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <1557758186-18706-1-git-send-email-stanley.chu@mediatek.com>
Content-Language: en-US
X-Virus-Scanned: ClamAV using ClamSMTP ; ns.iliad.fr ;
 Mon May 13 16:51:05 2019 +0200 (CEST)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190513_075111_219041_87648832 
X-CRM114-Status: GOOD (  10.44  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [212.27.33.1 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (marc.w.gonzalez[at]free.fr)
X-BeenThere: linux-mediatek@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-mediatek.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-mediatek>, 
 <mailto:linux-mediatek-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-mediatek/>
List-Post: <mailto:linux-mediatek@lists.infradead.org>
List-Help: <mailto:linux-mediatek-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-mediatek>, 
 <mailto:linux-mediatek-request@lists.infradead.org?subject=subscribe>
Cc: andy.teng@mediatek.com, chun-hung.wu@mediatek.com,
 kuohong.wang@mediatek.com, evgreen@chromium.org, subhashj@codeaurora.org,
 linux-mediatek@lists.infradead.org, peter.wang@mediatek.com,
 vivek.gautam@codeaurora.org, matthias.bgg@gmail.com, sayalil@codeaurora.org,
 linux-arm-kernel@lists.infradead.org, beanhuo@micron.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On 13/05/2019 16:36, Stanley Chu wrote:

> Currently auto-hibern8 is activated if host supports
> auto-hibern8 capability. However no error handlings are existed thus
> this feature is kind of risky.

This last sentence is not very idiomatic.

I would suggest:
"However, error-handling is not implemented, which makes the feature
somewhat risky."

> If "Hibernate Enter" or "Hibernate Exit" fail happens

I would suggest:
If either "Hibernate Enter" or "Hibernate Exit" fail during ...

> during auto-hibern8 flow, the corresponding interrupt
> "UIC_HIBERNATE_ENTER" or "UIC_HIBERNATE_EXIT" shall be raised
> according to UFS specification.
> 
> This patch adds auto-hibern8 error handlings:

error-handling

> - Monitor "Hibernate Enter" and "Hibernate Exit" interrupts after
>   auto-hibern8 feature is activated.

I just want to take this opportunity to ask a rhetorical question.

Who in the Great Heavens thought it would be a good idea to call the
feature "auto-hibern8" ?

Was it really worth it to save 2 characters by writing "8" instead
of "ate" ?

This bugs me so much that I just might send a patch to fix it up.

Regards.

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
