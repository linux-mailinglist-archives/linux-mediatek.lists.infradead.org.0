Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C3D81613BB
	for <lists+linux-mediatek@lfdr.de>; Mon, 17 Feb 2020 14:43:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=TGs09yxmykTULx9u4molzIPJuTC0RR3b13X2BLCkK8U=; b=TdJ/j9pdjmI7oOvxnDD6y00Pg
	TJGGuyGder8gdpxjybt7evBHAvMtBFjZ/U7Tu7mSGnHynzqHr5LXSccg7zAU0EdPTRewVX9dKXVyR
	Fw2nd7tPhrtSzQossAaNOIfxuH+1nC9URgMnAVO9C5zV/0dRrLxanvxN82sHzaqCYJoWm+8ie38LU
	Zo2FUbwQs6pB2//nwAQKvjWLIsNBxxgLjZqEuFJwk0lr5Zf3q0R6U4w5KqQ0LSRvPqriueTRHBiZx
	Vd0e6Bje6L7kuJMIInLvCk6A8w/lByAydUd+FHM6aqURAyeexM5xhZ54oI0KmXZVmyipWpl2eYnRR
	beWKIZExA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j3gfo-0004XR-V2; Mon, 17 Feb 2020 13:42:56 +0000
Received: from mail27.static.mailgun.info ([104.130.122.27])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3gfd-0004OO-JB
 for linux-mediatek@lists.infradead.org; Mon, 17 Feb 2020 13:42:46 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1581946965; h=Message-ID: References: In-Reply-To: Subject:
 Cc: To: From: Date: Content-Transfer-Encoding: Content-Type:
 MIME-Version: Sender; bh=SEXnp9cA3paejZ0P2RnhQ/ZYaeBEJbJoIBgTZMX7VMg=;
 b=HMVXesqU/ittXwmpZ6wmcOELlKdf3DXd0ymaFSB+mp5l2rpcjXbzYpQ021hcjXxoUP6pRSUO
 yzwUZ+5a1IJiFIEGgt/ZJ/wF/gC6ruJIvbSDROXovoiF7dcSbBML/FkVfNrTyumu9KshCAYP
 A5gJJZtKzWNrxWa/89QAv9SfYlQ=
X-Mailgun-Sending-Ip: 104.130.122.27
X-Mailgun-Sid: WyI0ZDIyMyIsICJsaW51eC1tZWRpYXRla0BsaXN0cy5pbmZyYWRlYWQub3JnIiwgImJlOWU0YSJd
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171])
 by mxa.mailgun.org with ESMTP id 5e4a984d.7fad760e2e68-smtp-out-n01;
 Mon, 17 Feb 2020 13:42:37 -0000 (UTC)
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id AB308C4479C; Mon, 17 Feb 2020 13:42:36 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED
 autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.codeaurora.org (localhost.localdomain [127.0.0.1])
 (using TLSv1 with cipher ECDHE-RSA-AES256-SHA (256/256 bits))
 (No client certificate requested) (Authenticated sender: cang)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id E4707C43383;
 Mon, 17 Feb 2020 13:42:35 +0000 (UTC)
MIME-Version: 1.0
Date: Mon, 17 Feb 2020 21:42:35 +0800
From: Can Guo <cang@codeaurora.org>
To: Stanley Chu <stanley.chu@mediatek.com>
Subject: Re: [PATCH v1 1/2] scsi: ufs: add required delay after gating
 reference clock
In-Reply-To: <1581946449.26304.15.camel@mtksdccf07>
References: <20200217093559.16830-1-stanley.chu@mediatek.com>
 <20200217093559.16830-2-stanley.chu@mediatek.com>
 <c6874825dd60ea04ed401fbd1b5cb568@codeaurora.org>
 <1581945168.26304.4.camel@mtksdccf07>
 <e518c4d1d94ec15e9c4c31c34a9e42d1@codeaurora.org>
 <1581946449.26304.15.camel@mtksdccf07>
Message-ID: <56c1fc80919491d058d904fcc7301835@codeaurora.org>
X-Sender: cang@codeaurora.org
User-Agent: Roundcube Webmail/1.3.9
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200217_054245_689154_61484915 
X-CRM114-Status: GOOD (  17.18  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [104.130.122.27 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-scsi@vger.kernel.org, martin.petersen@oracle.com,
 andy.teng@mediatek.com, jejb@linux.ibm.com, chun-hung.wu@mediatek.com,
 kuohong.wang@mediatek.com, linux-kernel@vger.kernel.org, avri.altman@wdc.com,
 linux-mediatek@lists.infradead.org, peter.wang@mediatek.com,
 alim.akhtar@samsung.com, matthias.bgg@gmail.com, asutoshd@codeaurora.org,
 bvanassche@acm.org, linux-arm-kernel@lists.infradead.org, beanhuo@micron.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On 2020-02-17 21:34, Stanley Chu wrote:
> Hi Can,
> 
> On Mon, 2020-02-17 at 21:22 +0800, Can Guo wrote:
>> On 2020-02-17 21:12, Stanley Chu wrote:
>> > Hi Can,
>> >
>> >
>> >> >  			} else if (!on && clki->enabled) {
>> >> >  				clk_disable_unprepare(clki->clk);
>> >> > +				wait_us = hba->dev_info.clk_gating_wait_us;
>> >> > +				if (ref_clk && wait_us)
>> >> > +					usleep_range(wait_us, wait_us + 10);
>> >>
>> >> Hi St,anley,
>> >>
>> >> If wait_us is 1us, it would be inappropriate to use usleep_range()
>> >> here.
>> >> You have checks of the delay in patch #2, but why it is not needed
>> >> here?
>> >>
>> >> Thanks,
>> >> Can Guo.
>> >
>> > You are right. I could make that delay checking as common function so
>> > it
>> > can be used here as well to cover all possible values.
>> >
>> > Thanks for suggestion.
>> > Stanley
>> 
>> Hi Stanley,
>> 
>> One more thing, as in patch #2, you have already added delays in your
>> ufshcd_vops_setup_clocks(OFF, PRE_CHANGE) path, plus this delay here,
>> don't you delay for 2*bRefClkGatingWaitTime in ufshcd_setup_clocks()?
>> As the delay added in your vops also delays the actions of turning
>> off all the other clocks in ufshcd_setup_clocks(), you don't need the
>> delay here again, do you agree?
> 
> MediaTek driver is not using reference clocks named as "ref_clk" 
> defined
> in device tree, thus the delay specific for "ref_clk" in
> ufshcd_setup_clocks() will not be applied in MediaTek platform.
> 
> This patch is aimed to add delay for this kind of "ref_clk" used by any
> future vendors.
> 
> Anyway thanks for the reminding : )
> 
>> 
>> Thanks,
>> Can Guo.
> 
> 
> Thanks,
> Stanley

Hi Stanley,

Then we are unluckily hit by this change. We have ref_clk in DT, thus
this change would add unwanted delays to our platforms. but still we
disable device's ref_clk in vops. :)

Could you please hold on patch #1 first? I need sometime to have a
dicussion with my colleagues on this.

Thanks.
Can Guo.

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
