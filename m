Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F146312F441
	for <lists+linux-mediatek@lfdr.de>; Fri,  3 Jan 2020 06:29:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=IOFKyi7iYwfXNfJ4IoaIFcSx0U1qOMJhZGxoKpumWVE=; b=mY+MI/z7lXBA2QjHGs1i25QBP
	55SFYw6gNFB8EuUP1bdPfl8MPDVKuvllVvpQAaoym8Jfw47kyuqS/EG0nhz++RAPBTKMFvwUEDXq+
	Bwt14C/TcQnGUs/WzRIAnuXwH5ORePzONanKJx3KBOK3VGxbs84FMnmrVGpLtMnhr1uenObuFNE9B
	mZDOQYKwDx5h2trtt6gj12xGfO33Rgqw42jgyZk+MuWIfk0ACgRC6fzoIe+NSon2KG1FbdNTwpRPY
	Iw5s+QS/G2u607rXc9x3L7+U/rv9B9ob1DrTO46q8oHvoFr/hANKhIrJcqqmnxBMwB+HwgFpADpMu
	nyXamR5CQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1inFWG-0005kS-7z; Fri, 03 Jan 2020 05:29:08 +0000
Received: from mail25.static.mailgun.info ([104.130.122.25])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1inFWB-0005j9-Jw
 for linux-mediatek@lists.infradead.org; Fri, 03 Jan 2020 05:29:05 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1578029342; h=Message-ID: References: In-Reply-To: Subject:
 Cc: To: From: Date: Content-Transfer-Encoding: Content-Type:
 MIME-Version: Sender; bh=QGQ3D1GyNhd0LAoBVLxbTbXL6/9pOn4Pwzlj2/BukcY=;
 b=LYyR/k4ZguRjctuToqDra1iRTOqdkB+Snzlrid/mQrioopWlka6Oygpco5WihMecdhB7dOJY
 s8rt7oklrSL4QlRfPTOFwmd3sveG29Zx7k7frTLR3BiLaNl5/6RkCjcBdu3yEey2onRMUGEs
 rF9oOtOBAF8sdJkdSgwF3Usxwtg=
X-Mailgun-Sending-Ip: 104.130.122.25
X-Mailgun-Sid: WyI0ZDIyMyIsICJsaW51eC1tZWRpYXRla0BsaXN0cy5pbmZyYWRlYWQub3JnIiwgImJlOWU0YSJd
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171])
 by mxa.mailgun.org with ESMTP id 5e0ed11b.7f815f4f8b90-smtp-out-n01;
 Fri, 03 Jan 2020 05:28:59 -0000 (UTC)
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id 823F2C43383; Fri,  3 Jan 2020 05:28:59 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED
 autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.codeaurora.org (localhost.localdomain [127.0.0.1])
 (using TLSv1 with cipher ECDHE-RSA-AES256-SHA (256/256 bits))
 (No client certificate requested) (Authenticated sender: cang)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 7B4A2C433CB;
 Fri,  3 Jan 2020 05:28:58 +0000 (UTC)
MIME-Version: 1.0
Date: Fri, 03 Jan 2020 13:28:58 +0800
From: Can Guo <cang@codeaurora.org>
To: Stanley Chu <stanley.chu@mediatek.com>
Subject: Re: [PATCH v1 1/2] scsi: ufs: set device as default active power mode
 during initialization only
In-Reply-To: <4888afd46a9065b7f298a5de039426c9@codeaurora.org>
References: <1577693546-7598-1-git-send-email-stanley.chu@mediatek.com>
 <1577693546-7598-2-git-send-email-stanley.chu@mediatek.com>
 <fd129b859c013852bd80f60a36425757@codeaurora.org>
 <1577754469.13164.5.camel@mtkswgap22>
 <836772092daffd8283a97d633e59fc34@codeaurora.org>
 <1577766179.13164.24.camel@mtkswgap22>
 <1577778290.13164.45.camel@mtkswgap22>
 <44393ed9ff3ba9878bae838307e7eec0@codeaurora.org>
 <1577947124.13164.75.camel@mtkswgap22>
 <4888afd46a9065b7f298a5de039426c9@codeaurora.org>
Message-ID: <e13011fd858cf3ec0258c4b7ac914973@codeaurora.org>
X-Sender: cang@codeaurora.org
User-Agent: Roundcube Webmail/1.3.9
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200102_212903_722513_C489EDFD 
X-CRM114-Status: GOOD (  13.95  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [104.130.122.25 listed in list.dnswl.org]
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
Cc: alim.akhtar@samsung.com, beanhuo@micron.com, bvanassche@acm.org,
 linux-scsi@vger.kernel.org, peter.wang@mediatek.com, cc.chou@mediatek.com,
 andy.teng@mediatek.com, jejb@linux.ibm.com, chun-hung.wu@mediatek.com,
 ron.hsu@mediatek.com, avri.altman@wdc.com, linux-mediatek@lists.infradead.org,
 linux-scsi-owner@vger.kernel.org, matthias.bgg@gmail.com,
 linux-arm-kernel@lists.infradead.org, martin.petersen@oracle.com,
 kuohong.wang@mediatek.com, linux-kernel@vger.kernel.org,
 stable@vger.kernel.org, subhashj@codeaurora.org, pedrom.sousa@synopsys.com,
 asutoshd@codeaurora.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On 2020-01-03 09:51, Can Guo wrote:
> On 2020-01-02 14:38, Stanley Chu wrote:
>> Hi Can,
>> 
>> On Tue, 2019-12-31 at 16:35 +0800, Can Guo wrote:
>> 
>>> Hi Stanley,
>>> 
>>> I missed this mail before I hit send. In current code, as per my
>>> understanding,
>>> UFS device's power state should be Active after ufshcd_link_startup()
>>> returns.
>>> If I am wrong, please feel free to correct me.
>>> 
>> 
>> Yes, this assumption of ufshcd_probe_hba() is true so I will drop this
>> patch.
>> Thanks for remind.
>> 
>>> Due to you are almost trying to revert commit 7caf489b99a42a, I am 
>>> just
>>> wondering
>>> if you encounter failure/error caused by it.
>> 
>> Yes, we actually have some doubts from the commit message of "scsi: 
>> ufs:
>> issue link startup 2 times if device isn't active"
>> 
>> If we configured system suspend as device=PowerDown/Link=LinkDown 
>> mode,
>> during resume, the 1st link startup will be successful, and after that
>> device could be accessed normally so it shall be already in Active 
>> power
>> mode. We did not find devices which need twice linkup for normal work.
>> 
>> And because the 1st linkup is OK, the forced 2nd linkup by commit 
>> "scsi:
>> ufs: issue link startup 2 times if device isn't active" leads to link
>> lost and finally the 3rd linkup is made again by retry mechanism in
>> ufshcd_link_startup() and be successful. So a linkup performance issue
>> is introduced here: We actually need one-time linkup only but finally
>> got 3 linkup operations.
>> 
>> According to the UFS spec, all reset types (including POR and Host
>> UniPro Warm Reset which both may happen in above configurations) other
>> than LU reset, UFS device power mode shall return to Sleep mode or
>> Active mode depending on bInitPowerMode, by default, it's Active mode.
>> 
>> So we are curious that why enforcing twice linkup is necessary here?
>> Could you kindly help us clarify this?
>> 
>> If anything wrong in above description, please feel free to correct 
>> me.
>> 
> 
> Hi Stanley,
> 
> Above description is correct. The reason why the UFS device becomes
> Active after the 1st link startup in your experiment is due to you
> set spm_lvl to 5, during system suspend, UFS device is powered down.
> When resume kicks start, the UFS device is power cycled once.
> 
> Moreover, if you set rpm_lvl to 5, during runtime suspend, if bkops is
> enabled, the UFS device will not be powered off, meaning when runtime
> resume kicks start, the UFS device is not power cycled, in this case,
> we need 3 times of link startup.
> 
> Does above explain?
> 
> Thanks,
> 
> Can Guo.
> 

Hi Stanley,

Sorry, typo before. I meant if set rpm_lvl/spm_lvl to 5, during suspend,
if is_lu_power_on_wp is set, the UFS device will not be fully powered 
off
(only VCC is down), meaning when resume kicks start, the UFS device is 
not
power cycled, in this case, we need 3 times of link startup.

Regards,

Can Guo.

>>> 
>>> Happy new year to you too!
>>> 
>>> Thanks,
>>> 
>>> Can Guo
>> 
>> Thanks,
>> 
>> Stanley
>> 
>>> 
>>> _______________________________________________
>>> Linux-mediatek mailing list
>>> Linux-mediatek@lists.infradead.org
>>> http://lists.infradead.org/mailman/listinfo/linux-mediatek

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
