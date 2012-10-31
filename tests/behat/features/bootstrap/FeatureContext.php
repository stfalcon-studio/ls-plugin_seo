<?php

use Behat\Behat\Context\ClosuredContextInterface,
    Behat\Behat\Context\TranslatedContextInterface,
    Behat\Behat\Context\BehatContext,
    Behat\MinkExtension\Context\MinkContext,
    Behat\Behat\Exception\PendingException;
use Behat\Gherkin\Node\PyStringNode,
    Behat\Gherkin\Node\TableNode;

$sDirRoot = dirname(realpath((dirname(__FILE__)) . "/../../../../../"));
set_include_path(get_include_path().PATH_SEPARATOR.$sDirRoot);

require_once($sDirRoot . "/tests/behat/features/bootstrap/BaseFeatureContext.php");

/**
 * LiveStreet custom feature context
 */
class FeatureContext extends BaseFeatureContext
{
    /**
     * @Then /^the response meta have:$/
     */
    public function ResponseMetaHave(TableNode $table)
    {
        foreach ($table->getHash() as $genreHash) {
            $searchValue = preg_quote($genreHash['value'], '/');
            $pattern = '".*<meta name=\"' . $genreHash['name'] . '\" content=\"' . $searchValue . '\">.*"';

            $this->assertSession()->responseMatches($pattern);
        }
    }

}
