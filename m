Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F0C041A7810
	for <lists+linux-mediatek@lfdr.de>; Tue, 14 Apr 2020 12:06:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-Reply-To:
	Date:References:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BxgbUtzwMt122jpMGColiy5nQytg7ZPNQPfSpLuASMc=; b=bjUkWgAji/9N6u
	A6wtfaozn6zqe5epyxC5ljjHQ64Hh4C2pTqFU3cciNMtmPHo30XZJoGurxMjklPf0odU5hsV8q+Dm
	RsNHiVE+3IcKLi+C8BVsNOTsqUpT2q2mSUJBtzQ+FZESbS9wWSQFxRKXBbdSI/F4aUs9/ugAnt8wp
	r9S01r1F/9Bc66ZLZpYJ3XWmSR3BGeaXnN/5OTbur4nBbyLGd8MxEh759vc4yyLyng+Ugyv0nPVTI
	vJgF+UOxUfimW4VClvMkebEvkRXXZY+ERNFIaJWLry7mvG7J2zXiG6tV0eJxTYKBJjQekIFafz4CV
	f1QqWrMG+89zHCk5aLQQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOIS9-0000DH-2T; Tue, 14 Apr 2020 10:06:01 +0000
Received: from mail27.static.mailgun.info ([104.130.122.27])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOIS5-0000Cn-Es
 for linux-mediatek@lists.infradead.org; Tue, 14 Apr 2020 10:05:58 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1586858757; h=Content-Type: MIME-Version: Message-ID:
 In-Reply-To: Date: References: Subject: Cc: To: From: Sender;
 bh=VXvOdKy6CCyAPMd/h91SwZnHIpupce3DVaASPSKrwg8=;
 b=WnQmD66RDApbWSs39fSD1/u6ynrgboaiK8ctBoTRV2+aU4eqf4xEyQGKnx22baM1I8K1Kw0g
 sGSkVkIhnJc8ClDaEgKsyF0BxaRc1B5MNGVvLHm0gSU/2u+GbZ16Z/ndUcEe1C0W82bjnjv5
 tE6MtL6mLXm4tsnrkZeL9DohQn0=
X-Mailgun-Sending-Ip: 104.130.122.27
X-Mailgun-Sid: WyI0ZDIyMyIsICJsaW51eC1tZWRpYXRla0BsaXN0cy5pbmZyYWRlYWQub3JnIiwgImJlOWU0YSJd
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171])
 by mxa.mailgun.org with ESMTP id 5e958b02.7f5459f746c0-smtp-out-n05;
 Tue, 14 Apr 2020 10:05:54 -0000 (UTC)
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id 098ABC43636; Tue, 14 Apr 2020 10:05:54 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED,SPF_NONE
 autolearn=unavailable autolearn_force=no version=3.4.0
Received: from potku.adurom.net (88-114-240-156.elisa-laajakaista.fi
 [88.114.240.156])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: kvalo)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 49171C433F2;
 Tue, 14 Apr 2020 10:05:50 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 49171C433F2
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 spf=none smtp.mailfrom=kvalo@codeaurora.org
From: Kalle Valo <kvalo@codeaurora.org>
To: Ryder Lee <ryder.lee@mediatek.com>
Subject: Re: [PATCH 08/16] mt76: mt7915: add offloading Tx AMSDU support
References: <cover.1586507878.git.ryder.lee@mediatek.com>
 <0cf99a5f317b0d41cd4832b14c99b6b9b8e5fefc.1586507878.git.ryder.lee@mediatek.com>
 <87imi2lg71.fsf@tynnyri.adurom.net>
 <1586858399.6545.1.camel@mtkswgap22>
Date: Tue, 14 Apr 2020 13:05:48 +0300
In-Reply-To: <1586858399.6545.1.camel@mtkswgap22> (Ryder Lee's message of
 "Tue, 14 Apr 2020 17:59:59 +0800")
Message-ID: <874ktmtm9v.fsf@kamboji.qca.qualcomm.com>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/24.5 (gnu/linux)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200414_030557_559214_F0E21185 
X-CRM114-Status: GOOD (  10.83  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [104.130.122.27 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Sean Wang <sean.wang@mediatek.com>, Evelyn Tsai <evelyn.tsai@mediatek.com>,
 linux-wireless@vger.kernel.org, YF Luo <yf.luo@mediatek.com>,
 Chih-Min Chen <chih-min.chen@mediatek.com>,
 Yiwei Chung <yiwei.chung@mediatek.com>, linux-mediatek@lists.infradead.org,
 Lorenzo Bianconi <lorenzo.bianconi@redhat.com>, Felix Fietkau <nbd@nbd.name>,
 Shayne Chen <shayne.chen@mediatek.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

Ryder Lee <ryder.lee@mediatek.com> writes:

> On Tue, 2020-04-14 at 09:44 +0300, Kalle Valo wrote:
>> Ryder Lee <ryder.lee@mediatek.com> writes:
>> 
>> > Add module parameter to enable hw_tx_amsdu.
>> 
>> Why is a module parameter needed? And why is it not enabled by default?
>> 
>
> This is still WIP, so make it optional. But I will drop this one until
> we're ready.

What do you mean? Are you saying that these patches are still RFC and
the final patches will not have the module parameter?

-- 
https://wireless.wiki.kernel.org/en/developers/documentation/submittingpatches

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
