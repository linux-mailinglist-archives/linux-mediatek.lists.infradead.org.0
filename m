Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6EDB3B8AC1
	for <lists+linux-mediatek@lfdr.de>; Fri, 20 Sep 2019 08:08:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=FsVYSWLqrH7fhUCPQB4u4zDe6a0uHb42K3tDM/hYhb4=; b=WhNW6+Q5KJ805p4kW0F0X6N7R
	WCgdi4fhjS2Ho9OVvdoC6hQaCVfliySgMrMwxdyqI1EfK0nZbR15UYW8THhonlO4SKKLPymg4ujAV
	4GMyG3DrxA6itolN0AmYrarAkoZlYtwrtcR9JZJWDebAIv7cjJ9MwPI8ghhUW7vKiJs3liMc4epq7
	iC5iSZO+J+9qpdk4IA+HADRoz3exa+IA9HLJy5EpfEqIIgCIx7e+lg1Ga9H0WLXl844qpwY80xm60
	fr2Qx3D+uhFsD3lszsh87L+snWVvP+xyOcp706V/ZsVjqcysZZzKtssJH69dwJUBjRcMeN8ofYYEJ
	0wlMiUqnw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iBC5j-0004FW-Bi; Fri, 20 Sep 2019 06:08:27 +0000
Received: from vulcan.natalenko.name ([2001:19f0:6c00:8846:5400:ff:fe0c:dfa0])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat
 Linux)) id 1iBC4z-0003wP-Go; Fri, 20 Sep 2019 06:07:43 +0000
Received: from mail.natalenko.name (vulcan.natalenko.name
 [IPv6:fe80::5400:ff:fe0c:dfa0])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by vulcan.natalenko.name (Postfix) with ESMTPSA id B02075E2A21;
 Fri, 20 Sep 2019 08:07:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=natalenko.name;
 s=dkim-20170712; t=1568959656;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=jH9gXNPbxi1W8r9+ABp+AurJWFHZfRBG5DgXPnFMReM=;
 b=R9vkVfECkjWSsgJppG8rxM736W3JpEs0gyNHlOeP0NxqIY0mOrOvG1NPEa47TciTF5yJgn
 iXHnMmXPi2bRWXfTDVLJTOu/Z9m5PGlhve07S4wTYUxY7KZVJ41HZusrpioYhwwA+Hy3hi
 99j9FqMlDBd163Sq7SiuIBav94PyaoA=
MIME-Version: 1.0
Date: Fri, 20 Sep 2019 08:07:36 +0200
From: Oleksandr Natalenko <oleksandr@natalenko.name>
To: linux-mediatek@lists.infradead.org
Subject: Re: mt76x2e hardware restart
In-Reply-To: <c6d621759c190f7810d898765115f3b4@natalenko.name>
References: <deaafa7a3e9ea2111ebb5106430849c6@natalenko.name>
 <c6d621759c190f7810d898765115f3b4@natalenko.name>
Message-ID: <9d581001e2e6cece418329842b2b0959@natalenko.name>
X-Sender: oleksandr@natalenko.name
User-Agent: Roundcube Webmail/1.3.10
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=natalenko.name; 
 s=arc-20170712; t=1568959656;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=jH9gXNPbxi1W8r9+ABp+AurJWFHZfRBG5DgXPnFMReM=;
 b=Lx7RSi2KM1izZeY1DlaZvsDfXcqIgMn13kACMSo+n2mRDTFq4BW1IrmUEyYwUuLiSl6bHi
 n1IhBPgJP6HMQhhtOmR2koeCh1eYP5P7bjkpF9dD3iujiiZuoEvYApZxGjdWfiugxVwjjk
 Pk49jnuQ/xyCGUfVowZo0qwtKO/q/Ug=
ARC-Seal: i=1; s=arc-20170712; d=natalenko.name; t=1568959656; a=rsa-sha256;
 cv=none;
 b=ltZH82cvZTCqUIZu17K+MZfElr0UyGtpOPdJxJdgkRBXBvIjnN1O85JL7EmLGgGuHw9V7e
 UOYX4cwyH2BJlW8ziD7E+9pWCcf6uH4vcDACi99Y5K6OgL7A7Hj1rG3uTUQjAbzDWpq5qu
 7tC9mxbub4DHtQorgIALBd8B7hEj3yo=
ARC-Authentication-Results: i=1; vulcan.natalenko.name;
 auth=pass smtp.auth=oleksandr@natalenko.name
 smtp.mailfrom=oleksandr@natalenko.name
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190919_230741_885121_09C124BD 
X-CRM114-Status: UNSURE (   6.51  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2001:19f0:6c00:8846:5400:ff:fe0c:dfa0 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Ryder Lee <ryder.lee@mediatek.com>, Stanislaw Gruszka <sgruszka@redhat.com>,
 netdev@vger.kernel.org, linux-wireless@vger.kernel.org,
 linux-kernel@vger.kernel.org, Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm-kernel@lists.infradead.org, Roy Luo <royluo@google.com>,
 Lorenzo Bianconi <lorenzo.bianconi83@gmail.com>,
 Lorenzo Bianconi <lorenzo@kernel.org>, "David S.
 Miller" <davem@davemloft.net>, Kalle Valo <kvalo@codeaurora.org>,
 Felix Fietkau <nbd@nbd.name>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On 19.09.2019 23:22, Oleksandr Natalenko wrote:
> It checks for TX hang here:
> 
> === mt76x02_mmio.c
> 557 void mt76x02_wdt_work(struct work_struct *work)
> 558 {
> ...
> 562     mt76x02_check_tx_hang(dev);
> ===

I've commented out the watchdog here ^^, and the card is not resetted 
any more, but similarly it stops working shortly after the first client 
connects. So, indeed, it must be some hang in the HW, and wdt seems to 
do a correct job.

Is it even debuggable/fixable from the driver?

-- 
   Oleksandr Natalenko (post-factum)

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
