Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 462BB165454
	for <lists+linux-mediatek@lfdr.de>; Thu, 20 Feb 2020 02:37:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=zyRW+k61UUSeQ/JY7l4r7hvqndRUBqcWccnE/IEQEXs=; b=D8eviIWK1L+jq3x925a/nVS05
	Zskc1hHVsKY9tBiaiL/sx96NAaQV9OrJyyJMbmaiwnvLTm1cZMVyqzE1uDa2L9OOwXE2uPlGVnQzr
	3jflEvnkXbKv6/V6j3Am8ULO6XLAnBKZdozxzY6lGxoN1oRjTMTNr2Wqe498NfWHhfbj1Zu1Fhju1
	qHNXwnHT8T8p4h62iHGYAM2b+/ZxvYxPdPGRPJk+/yBoE2jpGDpSNWt91m12+DfT15s8mb9e420VB
	gYtfnC2xG4gEkjENoEFY4wGT6OxkT53PUwk6fbSTjikzvDdnP7iXJdBl4Jbrr89V5WWJGik9ilAC4
	mewxoswLA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4amB-00077s-GJ; Thu, 20 Feb 2020 01:37:15 +0000
Received: from mail27.static.mailgun.info ([104.130.122.27])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4aly-0006vv-Pc
 for linux-mediatek@lists.infradead.org; Thu, 20 Feb 2020 01:37:07 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1582162625; h=Message-ID: References: In-Reply-To: Subject:
 Cc: To: From: Date: Content-Transfer-Encoding: Content-Type:
 MIME-Version: Sender; bh=hsLg89Wno2a4zivhXbQ7ZlOQv+K/T+fljhSoDklnjik=;
 b=xajnGnl+M2Ob9ftkxml/TOlBscgR6V+JSU2uSbypIfdlC0UgRIbA0+ktxsIFlJGQb4qX/H4Z
 gQIluZI+WBh+yWH9N/hKrbfaNKvR+Kziv+dFP7R1+qX0DEcAquHR9Iz2sqVMOgjW1AjOnde/
 sbrbSSRUxFW+AHRyPm8yzPLRbOc=
X-Mailgun-Sending-Ip: 104.130.122.27
X-Mailgun-Sid: WyI0ZDIyMyIsICJsaW51eC1tZWRpYXRla0BsaXN0cy5pbmZyYWRlYWQub3JnIiwgImJlOWU0YSJd
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171])
 by mxa.mailgun.org with ESMTP id 5e4de2ba.7fca98fd8998-smtp-out-n02;
 Thu, 20 Feb 2020 01:36:58 -0000 (UTC)
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id 4DAAFC447A5; Thu, 20 Feb 2020 01:36:58 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED
 autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.codeaurora.org (localhost.localdomain [127.0.0.1])
 (using TLSv1 with cipher ECDHE-RSA-AES256-SHA (256/256 bits))
 (No client certificate requested) (Authenticated sender: cang)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 90B50C433A2;
 Thu, 20 Feb 2020 01:36:57 +0000 (UTC)
MIME-Version: 1.0
Date: Thu, 20 Feb 2020 09:36:57 +0800
From: Can Guo <cang@codeaurora.org>
To: Stanley Chu <stanley.chu@mediatek.com>
Subject: Re: [PATCH v3 1/2] scsi: ufs: pass device information to
 apply_dev_quirks
In-Reply-To: <1582009359.26304.29.camel@mtksdccf07>
References: <1578726707-6596-1-git-send-email-stanley.chu@mediatek.com>
 <1578726707-6596-2-git-send-email-stanley.chu@mediatek.com>
 <2a8fc44914b7ed8777a4a99ba6b8647a@codeaurora.org>
 <1582009359.26304.29.camel@mtksdccf07>
Message-ID: <57698522f7e1d9401ac27a0bd7f0756a@codeaurora.org>
X-Sender: cang@codeaurora.org
User-Agent: Roundcube Webmail/1.3.9
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200219_173705_654858_3E9BA7B8 
X-CRM114-Status: GOOD (  14.46  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [104.130.122.27 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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

Hi Stanley,

On 2020-02-18 15:02, Stanley Chu wrote:
> Hi Can,
> 
> 
>> Hi Stanley,
>> 
>> Is this series merged? If no, would you mind moving
>> ufshcd_vops_apply_dev_quirks(hba, card); a little bit? Like below.
>> 
>> @@ -6852,14 +6852,14 @@ static void ufshcd_tune_unipro_params(struct
>> ufs_hba *hba)
>>                  ufshcd_tune_pa_hibern8time(hba);
>>          }
>> 
>> +       ufshcd_vops_apply_dev_quirks(hba, card);
>> +
>>          if (hba->dev_quirks & UFS_DEVICE_QUIRK_PA_TACTIVATE)
>>                  /* set 1ms timeout for PA_TACTIVATE */
>>                  ufshcd_dme_set(hba, UIC_ARG_MIB(PA_TACTIVATE), 10);
>> 
>> In this way, vendor codes have a chance to modify the dev_quirks
>> before ufshcd_tune_unipro_params() does the rest of its job.
>> 
> 
> This patch has been merged to 5.6-rc1.
> 
> Basically I am fine with your proposal. But if you need to move it to
> new mentioned position, our apply_dev_quirks callback also need
> corresponding change so it might need our co-works : )
> 
> For example, you could just post your proposed changes and then we 
> would
> provide corresponding change as soon as possible?
> 
> Besides, I would like to remind that allowing vendor to "fix" device
> quirks in advance imply that current common device quirks have some
> problems? If so, would you consider to fix common device quirks 
> instead?
> 
> 
>> Thanks,
>> Can Guo.
> 
> Thanks,
> Stanley Chu

Thanks for your cooperations on this :)

There are some failure seen with specific UFS devices on our platforms,
we can fix it with the quirk QUIRK_HOST_PA_TACTIVATE, but we are not
sure if other vendors need it or not. So we want to handle it more
carefully by limiting it to our platforms only. I had sent out that
patch weeks ago, so I will just upload the new patch as we both agreed
in that patch series.

Thanks,
Can Guo

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
