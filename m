Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B8AE1D25A7
	for <lists+linux-mediatek@lfdr.de>; Thu, 14 May 2020 06:04:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-Reply-To:
	Date:References:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HdCSeobiNX9cdJ1ilcOr8ai+jSmv8zemYvr8lR+sqHk=; b=tnhTNzKnjEPSTn
	G4GA6spn0WVWsDLKXYGsB/yAEfu6+d3FG/hMXuL9WC8z4ATEuksWrY8TYPxlgEmZCE96fLEewaeVD
	jT8NrDLo0LnWD27x82gwYPcX+H9uuVfNLE49o+raDe0YV+SUW/DZ0tv5rzTr3nUjEDruO6bC4eNKg
	G4S+DSaAO9wm+q8FHSYLplLPifLrGmXwSYDlWrqOrioMRWVnj1X39+lsEfgp2i6djlDhWUtSKJH7c
	0Iu7vRHgLm5nv2/T2qRLUSkkcdAgdrRxy8laM9jXQkd4SJQzss7hnqlkU9IyOGmWmTz7KjGYQxzVr
	3THGNCRL7d7nZM8rYxeg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZ56Q-0005aw-12; Thu, 14 May 2020 04:04:10 +0000
Received: from mail26.static.mailgun.info ([104.130.122.26])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZ56L-0005aX-9d
 for linux-mediatek@lists.infradead.org; Thu, 14 May 2020 04:04:08 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1589429047; h=Content-Type: MIME-Version: Message-ID:
 In-Reply-To: Date: References: Subject: Cc: To: From: Sender;
 bh=6VUV2jxiudy46M2bnqN6cSym4Gnd8QGBTUIh+5yEfeE=;
 b=UdNoNk56aFY2ShLOjezUwCZp7ORjqRP/7ECNzeo8KgN31RPUDHrgamYmRUD/Yg3iC6Gfslxg
 TOytZhAcxFaGRI02hvfes54EsRYthNENvebWeGY5jvDH75JsQa0Y8d+AaxJwMog22bQDRmaF
 xBWW4eVttgCh4bxWlInq154SxEY=
X-Mailgun-Sending-Ip: 104.130.122.26
X-Mailgun-Sid: WyI0ZDIyMyIsICJsaW51eC1tZWRpYXRla0BsaXN0cy5pbmZyYWRlYWQub3JnIiwgImJlOWU0YSJd
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171])
 by mxa.mailgun.org with ESMTP id 5ebcc326.7f1846dbca40-smtp-out-n05;
 Thu, 14 May 2020 04:03:50 -0000 (UTC)
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id F1639C433BA; Thu, 14 May 2020 04:03:49 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED,SPF_NONE
 autolearn=ham autolearn_force=no version=3.4.0
Received: from tynnyri.adurom.net (tynnyri.adurom.net [51.15.11.48])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested) (Authenticated sender: kvalo)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 878FCC433F2;
 Thu, 14 May 2020 04:03:47 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 878FCC433F2
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 spf=none smtp.mailfrom=kvalo@codeaurora.org
From: Kalle Valo <kvalo@codeaurora.org>
To: Jakub Kicinski <kubakici@wp.pl>
Subject: Re: [PATCH] mt76: fix different licenses in same driver
References: <3a5cb822eb4cd81d32b5480f1235c992ea4fbe06.1587193872.git.ryder.lee@mediatek.com>
 <d32134a6-9673-521f-22ee-871aa2284af0@nbd.name>
 <20200507100246.1e902bc8@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
Date: Thu, 14 May 2020 07:03:45 +0300
In-Reply-To: <20200507100246.1e902bc8@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
 (Jakub Kicinski's message of "Thu, 7 May 2020 10:02:46 -0700")
Message-ID: <87pnb7go2m.fsf@tynnyri.adurom.net>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/26.1 (gnu/linux)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200513_210407_507580_B51A82A6 
X-CRM114-Status: GOOD (  13.98  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [104.130.122.26 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [104.130.122.26 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Ryder Lee <ryder.lee@mediatek.com>, Stanislaw Gruszka <sgruszka@redhat.com>,
 Sean Wang <sean.wang@mediatek.com>, linux-wireless@vger.kernel.org,
 linux-mediatek@lists.infradead.org,
 Lorenzo Bianconi <lorenzo.bianconi@redhat.com>, Felix Fietkau <nbd@nbd.name>,
 Shayne Chen <shayne.chen@mediatek.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

Jakub Kicinski <kubakici@wp.pl> writes:

> On Thu, 7 May 2020 15:30:24 +0200 Felix Fietkau wrote:
>> Hi Ryder,
>> 
>> I think for this patch we need an explicit ACK from Stanislaw Gruszka
>> and Jakub Kicinski (both Cc'd), because mt76x0 was licensed under GPL.
>
> Thanks, yes, you definitely need an ack, especially from folks who have
> their copyright on the files :/
>
> My personal preference for the license was expressed clearly when the
> code was written and it is GPL-only. Felix, if you prefer the clean up
> I'm happy to ack, but I see no reason to downgrade the license at
> vendor's request.

I think it would be unfortunate to have different licenses in the same
driver. For example think of copying a function from one file to
another, how would we handle that? So my strong recommendation is to use
the same license throughout the driver. And in this case I consider mt76
directory and it's subdirectories as being one driver, please correct me
if that's not the case.

-- 
https://wireless.wiki.kernel.org/en/developers/documentation/submittingpatches

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
